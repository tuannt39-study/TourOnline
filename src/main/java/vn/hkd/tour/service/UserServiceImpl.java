package vn.hkd.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.hkd.tour.domain.User;
import vn.hkd.tour.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Override
	@Transactional(readOnly = true)
	public List<User> findAll() {
		return userRepository.findAll();
	}
	
	@Override
	@Transactional(readOnly = true)
	public User findOne(Integer id) {
		return userRepository.findOne(id);
	}

	@Override
	@Transactional(readOnly = true)
	public User findOne(String email) {
		return userRepository.findByEmail(email);
	}
	
	@Override
	@Transactional(readOnly = true)
	public long countAll() {
		return userRepository.count();
	}
	
	@Override
	@Transactional
	public void delete(Integer id) {
		userRepository.delete(id);
	}
	
	@Override
	@Transactional(readOnly = true)
	public User checkLogin(User user) {
		User ret = null;
		User dbUser = userRepository.findByEmail(user.getEmail());
		if (dbUser != null) {
			ret = new User();
			ret.setId(dbUser.getId());
			ret.setName(dbUser.getName());
			ret.setEmail(dbUser.getEmail());
		}
		return ret;
	}
	
	@Override
	@Transactional
	public boolean register(User user) {
		// Check email exists
		if (userRepository.findByEmail(user.getEmail()) != null) {
			return false; 
		}
		userRepository.save(user);
		return true;
	}

	@Override
	public void save(User user) {
		userRepository.save(user);
	}

}