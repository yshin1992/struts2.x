package com.action;

import java.util.List;

import com.bean.Person;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginConvs2Action extends ActionSupport{
	private List users;
	private String tip;
	
	/*
	 * struts2指定集合元素的类型
	 */

	public List getUsers() {
		return users;
	}

	public void setUsers(List users) {
		this.users = users;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	@Override
	public String execute() throws Exception {
		//ActionContext.getContext().put("users", getUsers());
		setTip("自定义类转换成功convers");
		return SUCCESS;
	}

}
