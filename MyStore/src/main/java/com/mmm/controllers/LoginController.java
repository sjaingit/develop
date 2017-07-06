package com.mmm.controllers;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	
	@Autowired 
	private UserRepository userRepository;
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping("/account/login")
	public String test(){  
		return "login";  
	}
	
/*	@RequestMapping(path="/save")
	public String addNewUser (@RequestParam String name, @RequestParam String email) {
		log.debug("LoginController: addNewUser Start");
		User n = new User();
		n.setName(name);
		n.setEmail(email);
		userRepository.save(n);
		log.debug("LoginController: addNewUser end");
		return "user-data";
	}*/
	

	@RequestMapping(path="/all")
	public @ResponseBody Iterable<User> getAllUsers(ModelMap model) {
		// This returns a JSON or XML with the users
		List<User> allUsers = (List<User>) userRepository.findAll();
		for(User user:allUsers){
			System.out.println(user.getName());
		}
		return userRepository.findAll();
	}
	
	@RequestMapping(path="/createaccount")
	public String createUser (ModelMap model,@RequestParam(required=false) String name ,
			@RequestParam(required=false) String email,@RequestParam(required=false) String password) {
		
		log.debug("LoginController: createUser Start");
		
		User user = new User();
		user.setName(name);
		user.setEmail(email);
		user.setPassword(password);
		
		boolean emailExist = preCreateAccount(model,user);
		
		if(emailExist){
			model.put("user",user);
			model.put("isError", true);
			return "login";
		}
		
		userRepository.save(user);
		postCreateAccount();
		model.put("user",user);
		log.debug("LoginController: createUser End");
		return "MyAccount";
	}
	
	@RequestMapping(path="/login")
	public String login (ModelMap model,@RequestParam(required=false) String email,@RequestParam(required=false) String password) {
		
		log.debug("LoginController: createUser Start");
		
		
		
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		
		boolean errorExist = preLogin(model,user);
		
		if(errorExist){
			model.put("user",user);
			model.put("isLoginError", true);
			return "login";
		}
		
		User userExist = userRepository.findByEmailAndPassword(email, password);
		if(null == userExist){
			model.put("isLoginError", true);
			model.put("errMsg", "email id " + user.getEmail()+" not exists");
			return "login";
		}
		model.put("user",userExist);
		 return "MyAccount";
	}
	
	private boolean preCreateAccount(ModelMap model,User user){
		
		if(MyUtility.isEmpty(user.getEmail())){
			model.put("errMsg", "email is empty");
			return true;
		}
		if(MyUtility.isEmpty(user.getName())){
			model.put("errMsg", "Name is empty");
			return true;
		}
		if(MyUtility.isEmpty(user.getPassword())){
			model.put("errMsg", "Password is empty");
			return true;
		}
		List<User> userList = userRepository.findDistinctPeopleByEmail(user.getEmail());
		if(userList.isEmpty()){
			model.put("errMsg", "email id " + user.getEmail()+" already exists");
			return false;
		}
		return true;
		
	}
	
	private boolean preLogin(ModelMap model,User user){
		if(MyUtility.isEmpty(user.getEmail())){
			model.put("errMsg", "email is empty");
			return true;
		}
		if(MyUtility.isEmpty(user.getPassword())){
			model.put("errMsg", "Password is empty");
			return true;
		}
	return false;
		
	}

	
	private void postCreateAccount(){
		
	}

}
