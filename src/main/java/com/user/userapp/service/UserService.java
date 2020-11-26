package com.user.userapp.service;

import java.util.List;

import com.user.userapp.entity.User;

public interface UserService {
	List<User> getAllUser();
	User getUserById(int id);
	String saveUser(User user);
	String updateUser(int id);
	String deleteUser(int id);
}
