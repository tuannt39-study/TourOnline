package vn.hkd.touronline.service;

import vn.hkd.touronline.model.Roles;

public interface RolesService {

    Roles findByName(String name);
}
