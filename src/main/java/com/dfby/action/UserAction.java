package com.dfby.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.dfby.domain.Message;
import com.dfby.domain.User;
import com.dfby.service.MessageServiceI;
import com.dfby.service.UserServiceI;

@Controller("UserAction")
public class UserAction {
	private List<User> lstUsers;
	private List<Message> lstMessages;
	
	@Autowired
	private UserServiceI userService;
	@Autowired
	private MessageServiceI messageService;
	
	@Action(value="UserAction_findList",className="UserAction",results={@Result(name="index",location="/list.jsp")})
	public String  findList() {
		lstUsers=userService.getAllUser2();
		lstMessages=messageService.getAllMessage2();
		return "index";
	}


	public List<User> getLstUsers() {
		return lstUsers;
	}


	public void setLstUsers(List<User> lstUsers) {
		this.lstUsers = lstUsers;
	}


	public List<Message> getLstMessages() {
		return lstMessages;
	}


	public void setLstMessages(List<Message> lstMessages) {
		this.lstMessages = lstMessages;
	}


	
	
}
