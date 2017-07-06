package com.mmm.controllers;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class WelcomeController {
	
	private Logger log = Logger.getLogger(this.getClass());

	/*// inject via application.properties
	@Value("${welcome.message:test}")*/
	private String message = "Hello World";

	@RequestMapping("/home")
	public String welcome(Map<String, Object> model) {
		if(log.isDebugEnabled()){
			log.debug("WelcomeController: welcome Start");
		}
		model.put("message", this.message);
		log.debug("WelcomeController: welcome end");
		return "welcome";
	}  


	@RequestMapping("/")  
	public String index(Map<String, Object> model){ 
		model.put("message", this.message);
		return "welcome";  
	}  
/*	@RequestMapping(value="/save", method=RequestMethod.POST)  
	public ModelAndView save(@ModelAttribute User user){  
		ModelAndView modelAndView = new ModelAndView();  
		modelAndView.setViewName("user-data");      
		modelAndView.addObject("user", user);    
		return modelAndView;  
	}*/
	
	@RequestMapping("/about")  
	public String about(){  
		return "about";  
	}
}
