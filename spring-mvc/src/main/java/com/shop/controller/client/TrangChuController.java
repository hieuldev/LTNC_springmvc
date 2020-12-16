package com.shop.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value ="TrangChuControllerOfClient" )
public class TrangChuController {
	@RequestMapping(value = "/mobileshop/trang-chu", method = RequestMethod.GET)
	   public ModelAndView home() {
	      ModelAndView mav = new ModelAndView("client/index");
	      return mav;
}
}
