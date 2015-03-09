package com.action;

import com.bean.Person;
import com.opensymphony.xwork2.ActionSupport;

public class LoginVisitorAction extends ActionSupport {
	
	private Person user;
	
	public Person getUser() {
		return user;
	}

	public void setUser(Person user) {
		this.user = user;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
	
	/*
	 * 重写validate方法
	 */
	

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		if(user.getName().indexOf("admin")==-1){
			addFieldError("user", "用户名错误");
		}
	}
	
	/*
	 * 这里我们假定有一个regist方法
	 * 在这里我们可以为regist方法指定一个校验方法
	 * 
	 */
	///////////注意如果同时有validate方法和validateXXX方法时，当指定XXX方法时,两个验证方法都会被调用，并且先调用validateXXX方法
	/*public String regist(){
		return SUCCESS;
	}
	
	public void validateRegist(){
		
	}*/


}
