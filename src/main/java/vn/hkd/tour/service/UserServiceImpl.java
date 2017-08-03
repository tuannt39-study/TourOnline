package vn.hkd.tour.service;

import vn.hkd.tour.dao.RoleDAO;
import vn.hkd.tour.dao.UserDAO;
import vn.hkd.tour.domain.Role;
import vn.hkd.tour.domain.User;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private RoleDAO roleDAO;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public List<User> findAll() {
        return userDAO.findAll();
    }

    @Override
    public User findOne(int id) {
        return userDAO.findOne(id);
    }

    @Override
    public User findOne(String email) {
        return userDAO.findOne(email);
    }

    @Override
    public int count() {
        return userDAO.count();
    }

    @Override
    public void create(User user, String role) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));

        Set<Role> roles = new HashSet<>();
        switch (role) {
            case "admin":
                roles.add(roleDAO.findOne("ROLE_ADMIN"));
                roles.add(roleDAO.findOne("ROLE_MEMBER"));
                break;
            case "member":
                roles.add(roleDAO.findOne("ROLE_MEMBER"));
                break;
        }
        user.setRoles(roles);

        userDAO.create(user);
    }

    @Override
    public void update(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));

        userDAO.update(user);
    }

    @Override
    public void update(User user, String role) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));

        Set<Role> roles = new HashSet<>();
        switch (role) {
            case "admin":
                roles.add(roleDAO.findOne("ROLE_ADMIN"));
                roles.add(roleDAO.findOne("ROLE_MEMBER"));
                break;
            case "member":
                roles.add(roleDAO.findOne("ROLE_MEMBER"));
                break;
        }
        user.setRoles(roles);

        userDAO.update(user);
    }

    @Override
    public void delete(User user) {
        userDAO.delete(user);
    }

}
