package com.shop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shop.entity.CategoryEntity;

public interface CategoryRepository extends JpaRepository<CategoryEntity,Long> {

}
