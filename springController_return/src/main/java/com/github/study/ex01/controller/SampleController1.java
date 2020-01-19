package com.github.study.ex01.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ex01")
public class SampleController1 {
	private static final Logger logger = LoggerFactory.getLogger(SampleController1.class);

	@RequestMapping("/doA")
	public void doA() {
		logger.info("doA 실행.........");
	}
	
	@RequestMapping("/doB")
	public void doB() {
		logger.info("doB 실행.........");
	}
}

//void 타입
