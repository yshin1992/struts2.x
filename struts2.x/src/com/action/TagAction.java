package com.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TagAction extends ActionSupport {

	String author;
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	/*
	 * 该Action主要负责测试s:action标签
	 */
	public String login() throws Exception{
		ActionContext.getContext().put("author", getAuthor());
		return "done";
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return "done";
	}

}
