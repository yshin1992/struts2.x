package com.action;

import com.bean.Person;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginConvAction extends ActionSupport{
	private Person user;
	private String tip;
	
	public Person getUser() {
		return user;
	}

	public void setUser(Person user) {
		this.user = user;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	@Override
	public String execute() throws Exception {
		ActionContext.getContext().getSession().put("user", getUser());
		setTip("自定义类转换成功");
		return SUCCESS;
	}

}
