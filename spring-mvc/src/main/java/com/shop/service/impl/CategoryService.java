package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.ICategoryDAO;
import com.shop.model.CategoryModel;
import com.shop.service.ICategoryService;

@Service
public class CategoryService implements ICategoryService {
	
	@Autowired
	private ICategoryDAO categoryDao;

	@Override
	public List<CategoryModel> findAll() {
		return categoryDao.findAll();
	}
}
