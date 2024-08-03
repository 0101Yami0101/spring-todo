package com.in28minutes.springboot.myfirstwebapp.login;

import java.util.Map;

import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
//import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
//import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@SessionAttributes("name")
public class loginController {
	

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String loginPage() {
        return "login"; // The JSP page containing both forms
    }

    @RequestMapping(value = "welcome", method = RequestMethod.POST)
    public String welcomePage(@RequestParam Map<String, String> params, ModelMap model){
    	
    	model.addAttribute("name", params.get("username"));
    	
    	if(params.get("username").equals("sss")) {
    	   
    		return "welcome"; 
    	}else {
    		model.put("errorMsg", "Oops! Wrong password.. Try again");
    		return "login";
    	}
    }

    
}
