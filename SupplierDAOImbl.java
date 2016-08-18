package com.access.dao;
import java.util.List;

import javax.management.Query;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.access.model.Category;
import com.access.model.Supplier;
import com.access.model.UserDetails;
@Repository("supplierDAO")
public class SupplierDAOImbl implements SupplierDAO{
	@Autowired
	private SessionFactory sessionFactory;


	public void SupplierDAOImbl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<java.util.function.Supplier> list() {
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) sessionFactory.getCurrentSession()
				.createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listSupplier;
	}

	@Transactional
	public void saveOrUpdate(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}

	@Transactional
	public void delete(String id) {
		Supplier SupplierToDelete = new Supplier();
		SupplierToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(SupplierToDelete);
	}

	@Transactional
	public java.util.function.Supplier get(String id) {
		String hql = "from Supplier where id=" + id;
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) ((Criteria) query).list();
		
		if (listSupplier != null && !listSupplier.isEmpty()) {
			return (java.util.function.Supplier) listSupplier.get(0);
		}
		
		return null;
	}


}
