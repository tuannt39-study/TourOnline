package vn.hkd.tour.service;

import vn.hkd.touronline.model.Roles;

public interface RolesService {

    Roles findByName(String name);
}
