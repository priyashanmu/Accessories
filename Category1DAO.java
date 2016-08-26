package com.access.dao;

import java.util.List;


import org.springframework.stereotype.Repository;

import com.access.model.Category1;


public interface Category1DAO {

	public boolean save (Category1 category1);
	public boolean update (Category1 category1);
	public boolean delete (Category1 category1);
	public Category1 get(String id);
	public List<Category1> list();
}