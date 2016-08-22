package com.access.aces;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.access.dao.ProductDAO;
import com.access.model.Product;

public class ProductTest {
	public static void main(String[] args){
		 AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		 context.scan("com.giftpack");
		 context.refresh();
		 ProductDAO ProductDAO= (ProductDAO) context.getBean("ProductDAO");
		 Product Product= (Product) context.getBean("Product");
		 Product.setP_id ("567");
		 Product.setP_name("bangles");
		 Product.setP_desc("Product");
		 if(ProductDAO.save(Product)==true)
		 {
			 System.out.println("Product created successfully");
		 }
		 else
		 {
			 System.out.println("Not able to create the Product");
		 }
		}

}
