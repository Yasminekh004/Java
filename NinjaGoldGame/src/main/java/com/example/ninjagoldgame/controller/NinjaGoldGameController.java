package com.example.ninjagoldgame.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;


@Controller
public class NinjaGoldGameController {

	/*@RequestMapping("/")
	public String index() {
					
		return "index.jsp";
	}*/
	
	@RequestMapping("/")
	public String farm( @RequestParam(value="farm", required = false) String farm,
			@RequestParam(value="cave", required = false) String cave,
			@RequestParam(value="house", required = false) String house,
			@RequestParam(value="quest", required = false) String quest,
			@RequestParam(value="spa", required = false) String spa,
			HttpSession session) {
		int gold=0;
		ArrayList<String> logs = new ArrayList<>();
		Random ran = new Random();
		
		if(session.getAttribute("gold") != null) {		
			gold =  Integer.parseInt(session.getAttribute("gold").toString());
			logs = (ArrayList<String>) session.getAttribute("logs");			
		}else {
			session.setAttribute("gold", gold);
			session.setAttribute("logs", logs);
		}
		
		Date date = new Date();
		SimpleDateFormat sp = new SimpleDateFormat("MMMM dd yyyy HH:mm:ss");
		String dateNow = sp.format(date);
		
		if(farm != null)
		{					
			int goldEarned = ran.nextInt(11) + 10;
			logs.add(0,"You entered a farm and earned "+goldEarned+" golds. ("+dateNow+")");
			gold += goldEarned;	
			session.setAttribute("gold", gold);
			session.setAttribute("logs", logs);
			return "redirect:/";
		}
		if(cave != null)
		{
			int goldEarned = ran.nextInt(6) + 5;
			logs.add(0,"You entered a cave and earned "+goldEarned+" golds. ("+dateNow+")");
			gold += goldEarned;
			session.setAttribute("gold", gold);
			session.setAttribute("logs", logs);
			return "redirect:/";
		}
		if(house != null)
		{
			int goldEarned = ran.nextInt(4) + 2;
			logs.add(0,"You entered a house and earned "+goldEarned+" golds. ("+dateNow+")");
			gold += goldEarned;	
			session.setAttribute("gold", gold);
			session.setAttribute("logs", logs);
			return "redirect:/";
		}
		if(quest != null)
		{
			int goldEarned = ran.nextInt(101) - 50;
			if(goldEarned>=0) {
				logs.add(0,"You completed a quest and earned "+goldEarned+" golds. ("+dateNow+")");
			}else {
				logs.add(0,"You faild a quest and lost "+(goldEarned*(-1))+" golds. Ouch. ("+dateNow+")");
			}			
			gold += goldEarned;	
			session.setAttribute("gold", gold);
			session.setAttribute("logs", logs);
			return "redirect:/";
		}
		
		if(spa != null)
		{
			int goldEarned = ran.nextInt(16) + 5;
			logs.add(0,"You entered a spa and lost "+ goldEarned +" golds. ("+dateNow+")");
			gold -= goldEarned;	
			session.setAttribute("gold", gold);
			session.setAttribute("logs", logs);
			return "redirect:/";
		}
		
		if(gold < -50) {
			return "prison.jsp";
		}
		
		return "index.jsp";
	}
	
	
	@RequestMapping("/reset")
	public String restCount(HttpSession session) {
		ArrayList<String> logs = new ArrayList<>();
		session.setAttribute("gold", 0);
		session.setAttribute("logs",logs);
		return "redirect:/"; 
	}
}
