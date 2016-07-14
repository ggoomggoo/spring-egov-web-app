package com.t1t1.example.home.web;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

//import com.t1t1.example.home.service.HomeService;

@Controller
@RequestMapping("/home")
public class HomeController {
	
	private static final org.slf4j.Logger log = org.slf4j.LoggerFactory.getLogger(HomeController.class);
	
//	@Resource(name = "homeService")
//	private HomeService homeService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String homeGet(HttpServletRequest req, HttpServletResponse resp, @RequestParam HashMap<String, Object> paramMap) throws Exception {
		log.debug("start: {}", "homeGet");
		log.debug("paramMap: {}", paramMap.toString());
		return "/home/home";
	}

}
