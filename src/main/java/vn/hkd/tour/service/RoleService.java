package vn.hkd.tour.service;

import vn.hkd.tour.domain.Role;

public interface RoleService {

	Role findByName(String name);
	
}
