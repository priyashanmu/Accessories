package com.access.dao;

import java.util.List;

import com.access.model.Product1;



public interface Product1DAO {

		 public List getList();
		 public Product1 getRowById(int id);
		 public int updateRow(Product1 p);
		 public int deleteRow(int id);
	}


