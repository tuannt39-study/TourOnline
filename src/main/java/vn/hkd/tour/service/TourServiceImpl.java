package vn.hkd.tour.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import vn.hkd.tour.dao.TourDAO;
import vn.hkd.tour.domain.CustomUserDetails;
import vn.hkd.tour.domain.Tour;
import vn.hkd.tour.domain.User;

import java.util.Date;
import java.util.List;

@Service
public class TourServiceImpl implements TourService{

    @Autowired
    private TourDAO tourDAO;

    @Override
    public List<Tour> findAll() {
        return tourDAO.findAll();
    }

    @Override
    public List<Tour> findAllByUser(int uid) {
        return tourDAO.findAllByUser(uid);
    }

    @Override
    public List<Tour> search(String t, int first, int max) {
        return tourDAO.search(t, first, max);
    }

    @Override
    public Tour findOne(int id) {
        return tourDAO.findOne(id);
    }

    @Override
    public Tour findOne(String name) {
        return tourDAO.findOne(name);
    }

    @Override
    public int count() {
        return tourDAO.count();
    }

    @Override
    public void create(Tour tour) {
        tour.setCreatedAt(new Date());
        Object pricipal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User currentUser = ((CustomUserDetails) pricipal).getUser();
        tour.setUser(currentUser);
        tourDAO.create(tour);
    }

    @Override
    public void update(Tour tour) {
        tourDAO.update(tour);
    }

    @Override
    public void delete(Tour tour) {
        tourDAO.delete(tour);
    }
}
