package com.action;

import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

@Result(location="/login.jsp")
public class FirstSecondAction extends ActionSupport {

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("进入第二个Action...");
		//访问国际化消息
		String login=getText("login");
		System.out.println(login);
		return SUCCESS;
	}

	
}
