package vn.hkd.tour.dao;

import vn.hkd.tour.domain.User;
import java.util.List;

public interface UserDAO {

    List<User> findAll();
    
    User findOne(int id);
    
    User findOne(String email);
    
    int count();

    void create(User user);
    
    void update(User user);

    void delete(User user);
    
}
