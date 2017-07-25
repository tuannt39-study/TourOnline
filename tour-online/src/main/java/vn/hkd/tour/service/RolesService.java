package vn.hkd.tour.service;

import vn.hkd.tour.model.Roles;

public interface RolesService {

    Roles findByName(String name);
}
