package com.action;


import java.io.InputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class FileDownLoadAction extends ActionSupport {

	//该属性可以在配置文件中动态指定
	private String inputPath;

	public void setInputPath(String inputPath) {
		this.inputPath = inputPath;
	}
	
	//定义一个返回InputStream的方法，该方法将作为被下载文件的入口，且需要配置
	//stream类型结果时指定inputName参数，inputName参数的值就是方法去掉get前缀、首字母小写的字符串
	
	public InputStream getTargetFile() throws Exception{
		//ServletContext提供getResourceAsStream方法
		//返回指定文件对应的输入流
		return ServletActionContext.getServletContext().getResourceAsStream(inputPath);
	}
	
}
