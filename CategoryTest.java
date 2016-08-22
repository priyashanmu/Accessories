package com.access.aces;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.access.dao.CategoryDAO;
import com.access.model.Category;

public class CategoryTest {
	public static void main(String[] args){
		 AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		 context.scan("com.access");
		 context.refresh();
		 CategoryDAO categoryDAO= (CategoryDAO) context.getBean("categoryDAO");
		 Category category= (Category) context.getBean("category");
		 category.setC_id ("456");
		 category.setC_name("bracelets");
		 category.setC_desc("this is a bracelets");
		 if(categoryDAO.save(category)==true)
		 {
			 System.out.println("category created successfully");
		 }
		 else
		 {
			 System.out.println("Not able to create the category");
		 }
		}
		}




