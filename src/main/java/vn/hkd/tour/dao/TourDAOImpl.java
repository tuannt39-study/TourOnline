package vn.hkd.tour.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import vn.hkd.tour.domain.Tour;

import javax.persistence.NoResultException;
import java.util.List;

@Repository
@Transactional
public class TourDAOImpl implements TourDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Tour> findAll() {
        Session session = sessionFactory.getCurrentSession();

        String hql = "select distinct t " +
                "from Tour t " +
                "left join fetch t.user ";

        return session.createQuery(hql).getResultList();
    }

    @Override
    public List<Tour> findAllByUser(int uid) {
        Session session = sessionFactory.getCurrentSession();

        String hql = "select distinct t " +
                "from Tour t " +
                "order by t.id desc";

        return session.createQuery(hql)
                .setParameter("uid", uid)
                .getResultList();
    }

    @Override
    public List<Tour> search(String t, int first, int max) {
        Session session = sessionFactory.getCurrentSession();

        String hql = "select distinct t " +
                "from Tour t " +
                "where t.name like :t";

        return session.createQuery(hql)
                .setParameter("t", "%" + t + "%")
                .setFirstResult(first - 1)
                .setMaxResults(max)
                .getResultList();
    }

    @Override
    public Tour findOne(int id) {
        Session session = sessionFactory.getCurrentSession();

        String hql = "select distinct t " +
                "from Tour t " +
                "where t.id = :id";

        try {
            return (Tour) session.createQuery(hql)
                    .setParameter("id", id)
                    .getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    @Override
    public Tour findOne(String name) {
        Session session = sessionFactory.getCurrentSession();

        String hql = "select distinct t " +
                "from Tour t " +
                "where t.name = :name";

        try {
            return (Tour) session.createQuery(hql)
                    .setParameter("name", name)
                    .getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    @Override
    public int count() {
        Session session = sessionFactory.getCurrentSession();

        String hql = "select count(*) " +
                "from Tour";

        return ((Number) session.createQuery(hql).getSingleResult()).intValue();
    }

    @Override
    public void create(Tour tour) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(tour);
    }

    @Override
    public void update(Tour tour) {
        Session session = sessionFactory.getCurrentSession();
        session.update(tour);
    }

    @Override
    public void delete(Tour tour) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(tour);
    }
}
