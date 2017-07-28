package vn.hkd.tour.service;

import java.util.List;

import vn.hkd.tour.domain.User;

public interface UserService {

	List<User> findAll();
	
	User findOne(Integer id);
	
	long countAll();
	
	void delete(Integer id);
	
	User checkLogin(User user);
	
	boolean register(User user);
	
}
