package com.laks.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laks.model.Product1;
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

	@RequestMapping("/product")
	public ModelAndView gotoProduct(@ModelAttribute("prod") Product1 prod) {

		return new ModelAndView("product");
	}

	@RequestMapping(value = "addProd", method = RequestMethod.POST)
	public ModelAndView getForm(@ModelAttribute("prod") Product1 prod) {
		productService.insertRow(prod);
		return new ModelAndView("product");
	}

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

	@RequestMapping("/delProd")
	public ModelAndView deleteUser(@RequestParam int id) {
		productService.deleteRow(id);
		return new ModelAndView("product");
	}

	@RequestMapping("editProduct")
	public ModelAndView editUser(@ModelAttribute("prod") Product1 prod, @RequestParam int id) {
		Product1 ProductObject = productService.getRowById(id);
		return new ModelAndView("editProduct", "ProductObject", ProductObject);
	}

	@RequestMapping("updateProduct")
	public ModelAndView updateUser(@ModelAttribute Product1 prod) {
		productService.updateRow(prod);
		return new ModelAndView("redirect:product");
	}

}
