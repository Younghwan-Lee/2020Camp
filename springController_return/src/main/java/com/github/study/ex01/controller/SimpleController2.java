package com.github.study.ex01.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ex01")
public class SimpleController2 {

	private static final Logger logger = LoggerFactory.getLogger(SimpleController2.class);
	
	@RequestMapping("/doC")
	public String doC(@ModelAttribute("msg") String msg) {
		
		logger.info("doC 실행.........");
		System.out.println("doC 메세지 : " + msg);
		
		return "result";
	}
}

// String 타입