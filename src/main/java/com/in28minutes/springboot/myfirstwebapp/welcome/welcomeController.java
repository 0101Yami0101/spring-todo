package com.in28minutes.springboot.myfirstwebapp.welcome;

import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;

//import java.util.Map;

import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
//import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
//import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@SessionAttributes("name")
public class welcomeController {
	

    @RequestMapping(value = "/")
    public String welcomePage(ModelMap model){
    	
    	String user= getLoggedInUsername();
    	model.addAttribute("name", user);
    	   
    	return "welcome";   	
    }
    
    public String getLoggedInUsername() {
    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    	
    	return authentication.getName();
    }
    
    

    
}
