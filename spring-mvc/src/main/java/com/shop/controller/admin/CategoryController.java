package com.shop.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shop.model.CategoryModel;
import com.shop.service.ICategoryService;

@Controller(value = "categoryControllerOfAdmin")
public class CategoryController 
{
	@Autowired
	private ICategoryService categoryService;
	@RequestMapping(value = "/quan-tri/danh-muc-san-pham/them-moi", method = RequestMethod.GET)
	public ModelAndView addCategory() {
		ModelAndView mav = new ModelAndView("admin/category/addCategory");
		return mav;
	}

	@RequestMapping(value = "/quan-tri/danh-muc-san-pham/danh-sach", method = RequestMethod.GET)
	public ModelAndView listCategory(@ModelAttribute("model") CategoryModel model) {
		ModelAndView mav = new ModelAndView("admin/category/listCategory");
		model.setListResult(categoryService.findAll());
		mav.addObject("model",model);
		return mav;
	}
}