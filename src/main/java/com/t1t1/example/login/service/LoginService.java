package com.t1t1.example.login.service;

import java.util.HashMap;
import java.util.Map;

public interface LoginService {

	Map<String, Object> loginUser(HashMap<String, Object> paramMap) throws Exception;

}
