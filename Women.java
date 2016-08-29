package com.laks.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class Women {
	
	public void women()
	{
		System.out.println("welcome");
	}
	@RequestMapping("/")
	public String ff()
	{
		return "home";
		
	}
	@RequestMapping("/home")
	public String gotoIn()
	{
		return "home";
		
	}
	@RequestMapping("/index")
	public String gotoIndex()
	{
		return "index";
		
	}
	@RequestMapping("/pro")
	public String gotopro()
	{
		return "pro";
		
	}
	@RequestMapping("/f")
	public String gotof()
	{
		return "f";
		
	}
	@RequestMapping("/fff")
	public String gotosign()
	{
		return "fff";
	}
	@RequestMapping(value="/checkLogin",method=RequestMethod.POST)
	public String validateLogin(HttpServletRequest r)
	{
		String v=r.getParameter("username");
		String p=r.getParameter("password");
		if((v.equals("priya"))&&(p.equals("1234"))){
			return "index";
		}
		else
		{
			return "f";
		}
	}
	@RequestMapping("/aboutas")
	public String gotos()
	{
		return "aboutas";
	}
	@RequestMapping("/about")
	public String gotosi()
	{
		return "about";
	}
	@RequestMapping("/earring")
	public String gotosig()
	{
		return "earring";
	}
	@RequestMapping("/images")
	public String gotor()
	{
		return "images";
	}
	
	@RequestMapping("/bangle")
	public String gotoban()
	{
		return "bangle";
	}
	@RequestMapping("/bracelet")
	public String gotobrace()
	{
		return "bracelet";
	}
	@RequestMapping("/rings")
	public String gotoring()
	{
		return "rings";
	}
}

