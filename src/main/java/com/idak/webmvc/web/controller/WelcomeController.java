package com.idak.webmvc.web.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WelcomeController {

	private final Logger LOG = LoggerFactory.getLogger(WelcomeController.class);


	@GetMapping(value = "/welcome")
	public String home(Map<String, Object> model) {
		LOG.info("home controller is called");
		return "home";
	} 
}