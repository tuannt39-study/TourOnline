package vn.hkd.tour.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.hkd.tour.model.Roles;
import vn.hkd.tour.repository.RolesRepository;

@Service
public class RolesServiceImpl implements RolesService{

    @Autowired
    private RolesRepository rolesRepository;

    @Override
    public Roles findByName(String name) {
        return rolesRepository.findByName(name);
    }
}
