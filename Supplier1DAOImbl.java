package com.access.dao;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.access.model.Supplier1;
@Repository("supplier1DAO")
public class Supplier1DAOImbl implements Supplier1DAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void Supplier1DAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Transactional
	
	public boolean save(Supplier1 supplier1)
	{
	try {
		sessionFactory.getCurrentSession().save(supplier1);	
		return true;
	} catch (HibernateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
	}
	@Transactional
	public boolean update(Supplier1 supplier1)
	{
		try {
			sessionFactory.getCurrentSession().update(supplier1);	
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	@Transactional
	public boolean delete(Supplier1 supplier1)
	{
		try {
			sessionFactory.getCurrentSession().delete(supplier1);	
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	@Transactional
	public Supplier1 get(String id)
	{
		String hql=" from Supplier where id ="+"'"+id+"'";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		List<Supplier1> list= query.list();
		if(list==null)
		{
			return null;
		}
		else
		{
			return (Supplier1) list.get(0);
		}
	}
	public List<Supplier1> list()
	{
		String hql=" from Supplier";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		return  query.list();
	}
	public boolean save(java.util.function.Supplier supplier) {
		// TODO Auto-generated method stub
		return false;
	}
	public boolean update(java.util.function.Supplier supplier) {
		// TODO Auto-generated method stub
		return false;
	}
	public boolean delete(String id) {
		// TODO Auto-generated method stub
		return false;
	}
}