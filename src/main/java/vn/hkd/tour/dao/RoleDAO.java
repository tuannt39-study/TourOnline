package vn.hkd.tour.dao;

import vn.hkd.tour.domain.Role;

public interface RoleDAO {
	
	Role findOne(String name);
	
}
