package com.idak.webmvc.config;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

import com.idak.webmvc.service.LoginService;

@Component
public class CustomAuthenticationProvider implements AuthenticationProvider {
	
	@Autowired
	private LoginService loginService;

 
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
  
        String username = authentication.getName();
        String password = authentication.getCredentials().toString();
         
        if (loginService.autenticate(username, password)) {
  
            // use the credentials
            // and authenticate against the third-party system
            return new UsernamePasswordAuthenticationToken(username, password, new ArrayList<>());
        } else {
            throw new BadCredentialsException("Invalid password. Please try again.");
        }
    }
 
    @Override
    public boolean supports(Class<? extends Object> authentication) {
        return (UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication));

    }

}
