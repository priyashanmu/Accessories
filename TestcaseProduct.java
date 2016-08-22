package com.access.aces;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.access.dao.ProductDAO;
import com.access.model.Product;

public class TestcaseProduct {

@Autowired
ProductDAO productDAO;

@Autowired
Product product;

AnnotationConfigApplicationContext context;

@Before
public void init()
{
context=new AnnotationConfigApplicationContext();
context.scan("com.access");
context.refresh();
productDAO=(ProductDAO) context.getBean("productDAO");
product=(Product) context.getBean("product");

}

@Test
public void deleteTestcaseProduct()
{
	product.setP_id("PRD_786");
	boolean flag = productDAO.delete(product);
	assertEquals("deleteTestcaseProduct",flag,false);
	
}
@Test
public void saveTestcaseProduct()
{
product.setP_id("PRD_786");
product.setP_name("Earring");
product.setP_desc("This is a Earring Product");
product.setP_price("800");

}
@Test
public void addProductTestCase() {
	product.setP_id("PRD_786");
	product.setP_name("Earring");
	product.setP_desc("This is a Earring Product");
	assertEquals("addProductTestCase", productDAO.save(product),true);

}


}

	