package com.shop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shop.entity.Admin;

@Controller(value ="loginControllerOfAdmin" )
public class LoginController extends BaseController{
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	   public ModelAndView Logins() {
	      _mvShare.setViewName("admin/login/index");
	      _mvShare.addObject("admin",new Admin());
	      return _mvShare;}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	   public ModelAndView Login(@ModelAttribute("admin") Admin admin) {
	      _mvShare.setViewName("admin/login/index");
	      return _mvShare;
}
	}

