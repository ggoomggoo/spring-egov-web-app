package com.t1t1.example.login.web;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.t1t1.example.login.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	private static final org.slf4j.Logger log = org.slf4j.LoggerFactory.getLogger(LoginController.class);
	
	@Resource(name = "loginService")
	private LoginService loginService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String loginGet(HttpServletRequest req, HttpServletResponse resp, @RequestParam HashMap<String, Object> paramMap) throws Exception {
		log.debug("start: {}", "loginGet");
		log.debug("paramMap: {}", paramMap.toString());
		return "/login/loginForm";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String loginPost(HttpServletRequest req, HttpServletResponse resp, @RequestParam HashMap<String, Object> paramMap) throws Exception {
		log.debug("start: {}", "loginPost");
		log.debug("paramMap: {}", paramMap.toString());
		
		Map<String, Object> user = loginService.loginUser(paramMap);
		if (user != null) {
			req.getSession().setAttribute("login", user);
		}
		
		return "redirect:/home";
	}

}
