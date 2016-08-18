package com.access.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.access.model.Category;
import com.access.model.UserDetails;


public interface UserDetailsDAO {
	public List<UserDetails> list();

	public UserDetails get(String id);

	public void saveOrUpdate(UserDetails userDetails);

	public void delete(String id);

}