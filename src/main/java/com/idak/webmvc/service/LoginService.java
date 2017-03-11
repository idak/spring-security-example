package com.idak.webmvc.service;

import java.util.Objects;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
	public boolean autenticate(String username, String password){
		return Objects.nonNull(username) && username.equals(password);
	}
}
