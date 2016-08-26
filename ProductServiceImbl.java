package com.laks.services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.access.dao.Product1DAO;
import com.access.model.Product1;


@Service("productService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ProductServiceImbl implements ProductService{
	
	@Autowired
	private Product1DAO product1DAO;

	public int insertRow(Product1 p) {
		// TODO Auto-generated method stub
		return ((ProductServiceImbl) product1DAO).insertRow(p);
		 
	}

	public List getList() {
		// TODO Auto-generated method stub
		return product1DAO.getList();
	}

	public Product1 getRowById(int id) {
		// TODO Auto-generated method stub
		return  product1DAO.getRowById(id);
	}

	public int updateRow(Product1 p) {
		// TODO Auto-generated method stub
		return  product1DAO.updateRow(p);
	}

	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return  product1DAO.deleteRow(id);
	}
}
