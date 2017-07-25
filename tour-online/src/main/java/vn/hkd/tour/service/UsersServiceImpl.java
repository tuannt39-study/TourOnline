package vn.hkd.tour.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import vn.hkd.tour.model.Users;
import vn.hkd.tour.repository.UsersRepository;

import java.util.List;

@Service
public class UsersServiceImpl implements UsersService{

    @Autowired
    private UsersRepository usersRepository;

    @Override
    @Transactional(readOnly = true)
    public List<Users> findAll() {
        return usersRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public Users findOne(Integer id) {
        return usersRepository.findOne(id);
    }

    @Override
    @Transactional(readOnly = true)
    public long countAll() {
        return usersRepository.count();
    }

    @Override
    @Transactional
    public void delete(Integer id) {
        usersRepository.delete(id);
    }
    
    @Override
    @Transactional
    public boolean register(Users user) {
        if (usersRepository.findByEmail(user.getEmail()) != null) {
            return false;
        }
        usersRepository.save(user);
        return true;
    }
}
