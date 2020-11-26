package com.user.userapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.userapp.entity.User;
import com.user.userapp.repository.UserRepo;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepo userRepo;
	
	public List<User> getAllUser() {
		try {
			return userRepo.findAll();
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	public User getUserById(int id) {
		try {
			return userRepo.findById(id).orElse(null);
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	public String saveUser(User user) {
		try {
			
			if(user.getId() != 0) {
				user.setId(user.getId());
			}
			userRepo.save(user);
			return "success";
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "error";
	}


	public String updateUser(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public String deleteUser(int id) {
		try {
			userRepo.deleteById(id);
			return "success";
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "error";
	}
	
	

}
