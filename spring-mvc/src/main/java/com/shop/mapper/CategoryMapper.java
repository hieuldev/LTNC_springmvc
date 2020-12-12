package com.shop.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.shop.model.CategoryModel;

public class CategoryMapper implements RowMapper<CategoryModel> {

	@Override
	public CategoryModel mapRow(ResultSet resultSet) {
		try {
			CategoryModel category = new CategoryModel();
			category.setCategoryID(resultSet.getString("CategoryID"));
			category.setCategoryName(resultSet.getString("CategoryName"));
			return category;
		} catch (SQLException e) {
			return null;
		}
	}
}
