package com.access.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.access.model.Category1;
import com.access.model.Category1;

@Repository("category1DAO")
public class Category1DAOImbl implements Category1DAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void Category1DAOImbl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public boolean save(Category1 category1) {
		try {
			sessionFactory.getCurrentSession().save(category1);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean update(Category1 category1) {
		try {
			sessionFactory.getCurrentSession().update(category1);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean delete(Category1 category1) {
		try {
			sessionFactory.getCurrentSession().delete(category1);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public Category1 get(String id) {
		String hql = " from Category1 where id =" + "'" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<Category1> list = query.list();
		if (list == null) {
			return null;
		} else {
			return list.get(0);
		}
	}

	public List<Category1> list() {
		String hql = " from Category11";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}
}
