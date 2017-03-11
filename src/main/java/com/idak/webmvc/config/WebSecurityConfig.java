package com.idak.webmvc.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private CustomAuthenticationProvider customAuthenticationProvider;

	@Autowired
	public void configure(AuthenticationManagerBuilder auth) throws Exception {
	  auth.authenticationProvider(customAuthenticationProvider);
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
	  http
      .authorizeRequests()
      .antMatchers("/auth/**","/resources/**").permitAll()
      .anyRequest().authenticated()
      .and()
      	.formLogin().loginPage("/auth/login")
      	.usernameParameter("login").passwordParameter("password")
      	.loginProcessingUrl("/login")
      	.defaultSuccessUrl("/welcome");

	}
}
