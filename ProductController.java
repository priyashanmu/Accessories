package com.laks.controller;

import java.io.BufferedOutputStream;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.google.gson.Gson;

import com.laks.model.Product;
import com.laks.services.ProductService;


@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	public ProductController() {
		// super();
		// TODO Auto-generated constructor stub
		System.out.println("product controller");
	}
	@RequestMapping("/listproduct")
	public @ResponseBody ModelAndView getlistproduct(ModelMap m)
	{
		List<Product> list=productService.getList();
		Gson gson=new Gson();
		String st=gson.toJson(list);
		m.addAttribute("priya",st);
		System.out.println("Json"+st);
		 return new ModelAndView("listproduct");
	}
	@RequestMapping("/Product")
	public ModelAndView gotoProduct(@ModelAttribute("prod") Product prod) {
		List productList = productService.getList();
		return new ModelAndView("Product", "ProductList", productList);
		
	}
	@RequestMapping(value = "saveProduct", method = RequestMethod.POST)
	public ModelAndView getForm(@ModelAttribute("prod") Product prod,ModelMap m) 
	{
		
		
			  MultipartFile file = prod.getFile(); 
			  String fileName = "";
			  
			  String image="";
			  if(!file.isEmpty())		 
			  {
				  try 
				  {
					  System.out.println("inside try");
				  fileName = file.getOriginalFilename();
				  byte[] filesize=file.getBytes();
				  BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(new File("C:\\Users\\Selvam\\workspace\\aa\\src\\main\\webapp\\resources\\pho\\" + fileName)));
				   bout.write(filesize);
				   bout.close();
				   image="/resources/pho/"+fileName;
				   //r.setAttribute("img",image);
				   m.addAttribute("img",image);
				   System.out.println("upload success.."+image);
				  }
				   catch (IOException e) {
				   // TODO Auto-generated catch block
					  System.out.println("upload failed..");
				   e.printStackTrace();
				  }
				 
			  }
			  productService.insertRow(prod,image);
			  List productList = productService.getList();
				return new ModelAndView("Product", "ProductList", productList);
					
	}

	/*@RequestMapping(value = "saveProduct", method = RequestMethod.POST)
	public ModelAndView getForm(@ModelAttribute("prod") Product prod) {
		productService.insertRow(prod);
		List productList = productService.getList();
		return new ModelAndView("Product", "ProductList", productList);
	}*/

	// @RequestMapping("register")
	// public ModelAndView registerUser(@ModelAttribute Product product) {
	// productService.insertRow(product);
	// return new ModelAndView("redirect:list");
	// }

	@RequestMapping("list")
	public ModelAndView getList() {
		List productList = productService.getList();
		return new ModelAndView("list", "ProductList", productList);
	}

	@RequestMapping("deleteProduct")
	public ModelAndView deleteUser(@ModelAttribute("prod")Product prod,@RequestParam int id) {
		productService.deleteRow(id);
		List productList = productService.getList();
		return new ModelAndView("Product","ProductList", productList);
	}
	
	@RequestMapping("editprod")
	public ModelAndView editUser(@ModelAttribute("prod") Product prod, @RequestParam int id) 
	{
		prod = productService.getRowById(id);
		List productList = productService.getList();
		return new ModelAndView("editProd", "ProductObject", prod);
	}

	@RequestMapping("updateProduct")
	public ModelAndView updateUser(@ModelAttribute("prod") Product prod) {
		productService.updateRow(prod);
		List productList = productService.getList();
		return new ModelAndView("redirect:Product");
	}

}
