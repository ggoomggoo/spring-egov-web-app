package com.t1t1.example.login.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.t1t1.example.login.service.LoginService;

@Service("loginService")
//public class LoginServiceImpl extends EgovAbstractServiceImpl implements LoginService {
public class LoginServiceImpl implements LoginService {
	
	@Resource(name = "loginMapper")
	private LoginMapper loginDao;

	@Override
	public Map<String, Object> loginUser(HashMap<String, Object> paramMap)
			throws Exception {
		return loginDao.loginUser(paramMap);
	}

}
