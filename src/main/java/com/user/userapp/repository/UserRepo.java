package com.user.userapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.user.userapp.entity.User;

@Repository
public interface UserRepo extends JpaRepository<User, Integer> {
	
}
