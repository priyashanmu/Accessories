package com.laks.demohandler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.laks.model.UserBean;
import com.laks.services.UserBeanService;

 

 
@Component
public class Demohandler {
 
	@Autowired
	UserBeanService userBeanService;
	
	public UserBean initFlow(){
		return new UserBean();
	}
 
	public String validateDetails(UserBean userBean,MessageContext messageContext){
		String status = "success";
		if(userBean.getUserName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"userId").defaultText("UserId cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getPassword()==null){
			messageContext.addMessage(new MessageBuilder().error().source(
					"age").defaultText("Age cannot be Empty").build());
			status = "failure";
		}
		if(status.equals("success"))
		{
			userBeanService.insertRow(userBean);
		}
		return status;
	}
}