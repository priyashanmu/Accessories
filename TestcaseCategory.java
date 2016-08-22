package com.access.aces;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.access.dao.CategoryDAO;
import com.access.model.Category;

public class TestcaseCategory {

	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	Category category;

	AnnotationConfigApplicationContext context;

	@Before
	public void init()
	{
	context=new AnnotationConfigApplicationContext();
	context.scan("com.access");
	context.refresh();
	categoryDAO=(CategoryDAO) context.getBean("categoryDAO");
	category=(Category) context.getBean("category");

	}

	@Test
	public void deleteTestcaseCategory()
	{
		category.setC_id("PRD_786");
		boolean flag = categoryDAO.delete(category);
		assertEquals("deleteTestcaseCategory",flag,false);
		
	}
	@Test
	public void saveTestcaseCategory()
	{
	category.setC_id("PRD_786");
	category.setC_name("Earring");
	category.setC_desc("This is a Earring Category");

	}
	@Test
	public void addCategoryTestCase() {
		category.setC_id("PRD_786");
		category.setC_name("Earring");
		category.setC_desc("This is a Earring Category");
		assertEquals("addCategoryTestCase", categoryDAO.save(category),true);

	}


	}

		