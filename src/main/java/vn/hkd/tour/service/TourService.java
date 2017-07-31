package vn.hkd.tour.service;

import vn.hkd.tour.domain.Tour;

import java.util.List;

public interface TourService {

    Iterable<Tour> findAll();

    List<Tour> search(String keyword);

    Tour findOne(int id);

    Tour findOne(String name);

    long countAll();

    Tour save(Tour tour);

    void delete(int id);
}
