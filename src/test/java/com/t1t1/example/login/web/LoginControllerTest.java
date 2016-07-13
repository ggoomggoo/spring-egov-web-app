package com.t1t1.example.login.web;

import static org.junit.Assert.fail;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LoginControllerTest {
	
	private LoginController loginController;
	
//	private HttpServletRequest req;
	
//	private HttpServletResponse resp;
	
	private static final Logger log = LoggerFactory.getLogger(LoginControllerTest.class);

	@Before
	public void setUp() throws Exception {
		log.debug("setUp");
		loginController = new LoginController();
		// API 컨트롤러 주 메서드 테스트 불가 판단;
		// http://thswave.github.io/java/2015/03/02/spring-mvc-test.html
//		req = new HttpServletRequest(){};
	}

	@After
	public void tearDown() throws Exception {
		log.debug("tearDown");
	}

	@Test
	public void testLoginGet() {
//		loginController.loginGet(req, resp, paramMap);
		fail("Not yet implemented");
	}

	@Test
	public void testLoginPost() {
		fail("Not yet implemented");
	}

}
