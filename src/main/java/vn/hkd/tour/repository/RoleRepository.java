package vn.hkd.tour.repository;

import org.springframework.data.repository.CrudRepository;

import vn.hkd.tour.domain.Role;

public interface RoleRepository extends CrudRepository<Role, Integer> {
	
	Role findByName(String name);

}
