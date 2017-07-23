package vn.hkd.tour.repository;

import org.springframework.data.repository.CrudRepository;
import vn.hkd.touronline.model.Roles;

public interface RolesRepository extends CrudRepository<Roles, Integer> {

    Roles findByName(String name);

}
