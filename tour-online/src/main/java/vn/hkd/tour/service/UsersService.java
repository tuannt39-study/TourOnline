package vn.hkd.tour.service;

import vn.hkd.tour.model.Users;

import java.util.List;

public interface UsersService {

    List<Users> findAll();

    Users findOne(Integer id);

    long countAll();

    void delete(Integer id);

    boolean register(Users users);

}
