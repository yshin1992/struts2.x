package com.action;

import com.opensymphony.xwork2.ActionSupport;

public class MessageErrorAction extends ActionSupport {

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		addActionError("第一条错误信息");
		addActionError("第二条错误信息");
		
		addActionMessage("第一条普通信息");
		addActionMessage("第二条普通信息");
		return SUCCESS;
	}

}
