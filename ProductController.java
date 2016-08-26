package com.laks.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.access.model.Product1;
import com.laks.services.ProductService;




@Controller
public class ProductController {

	public ProductController() {
		System.out.println("prod control");
	}
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("/Product")
	public ModelAndView gotoAddProd(@ModelAttribute("prod")Product1 prod)
	{
		return new ModelAndView("Product");
	}
	
	@RequestMapping(value="saveProduct",method=RequestMethod.POST)
	public ModelAndView getProd(@ModelAttribute("prod") Product1 prod) {
		productService.insertRow(prod);
		List ls=productService.getList();
		  return new ModelAndView("Product","listProd",ls);
		 }
	@RequestMapping("/delProd")
	public ModelAndView deleteProd(@ModelAttribute("prod")Product1 prod,@RequestParam int id)
	{
		productService.deleteRow(id);
		return new ModelAndView("Product");
	}
}
