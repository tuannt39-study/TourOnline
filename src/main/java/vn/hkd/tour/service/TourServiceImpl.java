package vn.hkd.tour.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import vn.hkd.tour.domain.Tour;
import vn.hkd.tour.repository.TourRepository;

import java.util.List;

@Service
public class TourServiceImpl {

    @Autowired
    private TourRepository tourRepository;

    @Autowired
    @Transactional(readOnly = true)
    public Iterable<Tour> findAll() {
        return tourRepository.findAll();
    }


    @Transactional(readOnly = true)
    public List<Tour> search(String keyword) {
        return tourRepository.findByNameContaining(keyword);
    }


    @Transactional(readOnly = true)
    public Tour findOne(int id) {
        return tourRepository.findOne(id);
    }


    @Transactional(readOnly = true)
    public Tour findOne(String name) {
        return tourRepository.findByName(name);
    }

    @Transactional(readOnly = true)
    public long countAll() {
        return tourRepository.count();
    }


    @Transactional
    public Tour save(Tour tour) {
        return tourRepository.save(tour);
    }


    @Transactional
    public void delete(int id) {
        tourRepository.delete(id);
    }
}
