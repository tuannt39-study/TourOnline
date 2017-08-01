package vn.hkd.tour.service;

import vn.hkd.tour.domain.User;
import java.util.List;

public interface UserService {

    List<User> findAll();
    
    User findOne(int id);
    
    User findOne(String email);
    
    int count();
    
    void create(User user, String role);
    
    void update(User user);
    
    void update(User user, String role);
    
    void delete(User user);

}
