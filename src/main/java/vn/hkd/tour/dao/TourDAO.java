package vn.hkd.tour.dao;

import vn.hkd.tour.domain.Tour;

import java.util.List;

public interface TourDAO {

    List<Tour> findAll();

    List<Tour> findAllByUser(int uid);

    List<Tour> search(String t, int first, int max);

    Tour findOne(int id);

    Tour findOne(String name);

    int count();

    void create(Tour tour);

    void update(Tour tour);

    void delete(Tour tour);
}
