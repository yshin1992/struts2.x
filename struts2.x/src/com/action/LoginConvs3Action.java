package com.action;

import java.util.List;

import com.bean.Person;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginConvs3Action extends ActionSupport{
	private Person user;
	private String tip;
	
	/*
	 * struts2使用自定义转换器
	 * 这里，将"Jane,22"这样的字符串通过自定义转换器转成Person类
	 */

	
	public String getTip() {
		return tip;
	}

	public Person getUser() {
		return user;
	}

	public void setUser(Person user) {
		this.user = user;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	@Override
	public String execute() throws Exception {
		//ActionContext.getContext().put("users", getUsers());
		System.out.println(user.getName()+"..........");
		setTip("自定义类转换成功convers");
		return SUCCESS;
	}

}
