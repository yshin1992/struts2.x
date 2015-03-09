package com.action;

import java.util.Set;

import com.bean.Person;
import com.opensymphony.xwork2.ActionSupport;

public class LoginConvsSetAction extends ActionSupport{
	private Set users;
	private String tip;
	
	/*
	 * 将字符串转换成Set集合
	 */

	
	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}
	
	

	public Set getUsers() {
		return users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

	@Override
	public String execute() throws Exception {
		//ActionContext.getContext().put("users", getUsers());
		setTip("自定义类转换成功convers");
		return SUCCESS;
	}

}
