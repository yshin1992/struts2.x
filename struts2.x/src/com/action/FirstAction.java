package com.action;

import com.opensymphony.xwork2.ActionSupport;

public class FirstAction extends ActionSupport {

	private String tip;

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	@Override
	public String execute() throws Exception {
		
		System.out.println("进入第一个action......");
		setTip("第一个Action的提示");
		return "second";
	}
	
}
