package vn.hkd.tour.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import vn.hkd.tour.domain.Tour;

import java.util.List;

public interface TourRepository extends CrudRepository<Tour, Integer> {

    @Query("select t from Tour t")
    List<Tour> findAll();

    @Query("from Tour t where t.id = ?1")
    Tour findById(Integer id);

    @Query("from Tour t where t.name = ?1")
    Tour findByName(String name);

    List<Tour> findByNameContaining(String keyword);
}
