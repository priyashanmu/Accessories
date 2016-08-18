package com.access.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.access.model.Category;


public interface CategoryDAO {

	public List<Category> list();

	public Category get(String id);

	public void saveOrUpdate(Category category);

	public void delete(String id);

}