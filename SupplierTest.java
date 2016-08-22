package com.access.aces;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.access.dao.SupplierDAO;
import com.access.model.Supplier;

public class SupplierTest {

	public static void main(String[] args){
	 AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	 context.scan("com.giftpack");
	 context.refresh();
	 SupplierDAO supplierDAO= (SupplierDAO) context.getBean("supplierDAO");
	 Supplier supplier= (Supplier) context.getBean("supplier");
	 supplier.setS_id ("908");
	 supplier.setS_name("pri");
	 supplier.setS_desc("Supplier");
	 if(supplierDAO.save((java.util.function.Supplier) supplier)==true)
	 {
		 System.out.println("supplier created successfully");
	 }
	 else
	 {
		 System.out.println("Not able to create the supplier");
	 }
	}
	}



