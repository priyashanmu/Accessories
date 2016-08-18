package com.access.dao;

import java.util.List;

import javax.management.Query;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.access.model.Category;
import com.access.model.UserDetails;
@Repository("userDetailsDAO")
public class UserDetailsDAOImbl implements UserDetailsDAO {
	@Autowired
	private SessionFactory sessionFactory;


	public void UserDetailsDAOImbl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<UserDetails> list() {
		@SuppressWarnings("unchecked")
		List<UserDetails> listUserDetails = (List<UserDetails>) sessionFactory.getCurrentSession()
				.createCriteria(UserDetails.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listUserDetails;
	}

	@Transactional
	public void saveOrUpdate(UserDetails userDetails) {
		sessionFactory.getCurrentSession().saveOrUpdate(userDetails);
	}

	@Transactional
	public void delete(String id) {
		UserDetails UserDetailsToDelete = new UserDetails();
		UserDetailsToDelete.setUid(id);
		sessionFactory.getCurrentSession().delete(UserDetailsToDelete);
	}

	@Transactional
	public UserDetails get(String id) {
		String hql = "from UserDetails where id=" + id;
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<UserDetails> listUserDetails = (List<UserDetails>) ((Criteria) query).list();
		
		if (listUserDetails != null && !listUserDetails.isEmpty()) {
			return listUserDetails.get(0);
		}
		
		return null;
	}


}
