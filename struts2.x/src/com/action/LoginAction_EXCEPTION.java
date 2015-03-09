package com.action;

import java.sql.SQLException;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import com.exception.MyException;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.PreResultListener;

public class LoginAction_EXCEPTION extends ActionSupport {
	String username;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String execute() throws Exception {
		if("user".equalsIgnoreCase(getUsername())){
			throw new MyException("用户名异常");
		}
		if("sql".equalsIgnoreCase(getUsername())){
			throw new SQLException("用户名不能为SQL");
		}
		return SUCCESS;	
	}

}
