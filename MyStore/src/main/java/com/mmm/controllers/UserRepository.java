package com.mmm.controllers;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {
	
	User findByEmail(String email);

	List<User> findDistinctPeopleByEmail(String email);
	
	User findByEmailAndPassword(String email,String password);

}