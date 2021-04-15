package com.codingdojo.counter;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class counterController {
	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping("/counter")
	public String counter(HttpSession session) {
		if(session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
		}
		else {
			Integer count = (Integer) session.getAttribute("count");
			session.setAttribute("count", count+1);
		}
		return "counter.jsp";
	}
	
	@RequestMapping("/counter2")
	public String counter2(HttpSession session) {
		if(session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
		}
		else {
			Integer count = (Integer) session.getAttribute("count");
			session.setAttribute("count", count+1);
		}
		return "redirect:/counter";
	}
	
	@RequestMapping("/reset")
	public String resetCounter(HttpSession session){
		session.removeAttribute("count");
		return "redirect:/counter";
	}
}