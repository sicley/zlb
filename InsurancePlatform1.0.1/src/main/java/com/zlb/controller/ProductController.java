package com.zlb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zlb.common.vo.SysResult;
@Controller
@RequestMapping("/product")
public class ProductController {

	@RequestMapping("/seriousIllness.do")
	public String doSeriousIllnessIndex() {
		return "sys/serious_illness";
	}
}
