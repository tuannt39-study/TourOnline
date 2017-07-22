package vn.hkd.touronline.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import vn.hkd.touronline.model.Users;

import java.util.List;

public interface UsersRepository extends CrudRepository<Users, Integer> {

    @Query("select u from Users u")
    List<Users> findAll();

    @Query("from Users u left join fetch u.roles where u.email = ?1")
    Users findByEmail(String email);

}
