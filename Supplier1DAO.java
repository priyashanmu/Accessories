package com.access.dao;

import java.util.List;

import java.util.function.Supplier;

import org.springframework.stereotype.Repository;

import com.access.model.Supplier1;


public interface Supplier1DAO {
	public List<Supplier1> list();

	public Supplier1 get(String id);

	public boolean save(Supplier1 supplier1);

	public boolean update(Supplier1 supplier1);

	public boolean delete(String id);

}



