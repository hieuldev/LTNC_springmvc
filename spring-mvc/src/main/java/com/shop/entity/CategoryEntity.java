package com.shop.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "category")
public class CategoryEntity {
	@Id//khoa chinh
	@GeneratedValue(strategy = GenerationType.IDENTITY)//thuoc tinh tu tang
	private Long categoryID;
	@Column(name="categoryname")
	private String categoryName;
	public Long getCategoryID() {
		return categoryID;
	}
	
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	

}
