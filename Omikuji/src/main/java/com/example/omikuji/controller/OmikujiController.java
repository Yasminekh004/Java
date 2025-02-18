package com.example.omikuji.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class OmikujiController {

	@GetMapping("/omikuji")
	public String index() {
		return "index.jsp";
	}
	
	@PostMapping("/confirm")
	public String show(@RequestParam(value="luky") String luky,
		    		   @RequestParam(value="city") String city,
		    		   @RequestParam(value="person") String person,
		    		   @RequestParam(value="hobby") String hobby,
		    		   @RequestParam(value="thing") String thing,
		    		   @RequestParam(value="nice") String nice,
		    		   HttpSession session) {
		
		Map<String,String> inputInfo = new HashMap<>();
		
		inputInfo.put("luky", luky);
		inputInfo.put("city", city);
		inputInfo.put("person", person);
		inputInfo.put("hobby", hobby);
		inputInfo.put("thing", thing);
		inputInfo.put("nice", nice);
		
		session.setAttribute("inputInfo", inputInfo);
		
		
		return "redirect:/omikuji/show";
	}
	
	@GetMapping("/omikuji/show")
	public String confirmationPage(Model model, HttpSession session){
	    
	    if(session.getAttribute("inputInfo") !=null) {	    
	    	System.out.println(session.getAttribute("inputInfo").toString());
	    	model.addAttribute("inputInfo", session.getAttribute("inputInfo"));
	    }
	        
	    return "show.jsp";
	}
}
