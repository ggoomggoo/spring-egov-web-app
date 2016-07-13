package com.t1t1.example.login.web;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

//@Controller("login")
@Controller
//@RequestMapping("login")
@RequestMapping("/login")
public class LoginController {
	
	private static final org.slf4j.Logger log = org.slf4j.LoggerFactory.getLogger(LoginController.class);
	
//	@RequestMapping(value = {""}, method = RequestMethod.GET)
//	@RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
	@RequestMapping(value = "/form.do", method = RequestMethod.GET)
	public String loginGet(HttpServletRequest req, HttpServletResponse resp, @RequestParam HashMap<String, Object> paramMap) throws Exception {
//		log.debug("start: ", "loginGet");
		log.debug("start: {}", "loginGet");
		log.debug("paramMap: {}", paramMap.toString());
		return "/login/loginForm";
	}
	
//	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	@RequestMapping(value = "/form.do", method = RequestMethod.POST)
//	@RequestMapping(method = RequestMethod.POST)
	public String loginPost(HttpServletRequest req, HttpServletResponse resp, @RequestParam HashMap<String, Object> paramMap) throws Exception {
		log.debug("start: {}", "loginPost");
		log.debug("paramMap: {}", paramMap.toString());
		return "redirect:/login/form.do";
	}

}
