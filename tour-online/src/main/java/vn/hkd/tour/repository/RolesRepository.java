package vn.hkd.tour.repository;

import org.springframework.data.repository.CrudRepository;
import vn.hkd.tour.model.Roles;

public interface RolesRepository extends CrudRepository<Roles, Integer> {

    Roles findByName(String name);

}
