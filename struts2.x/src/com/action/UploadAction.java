package com.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport {

	//封装文件上传内容
	private File upload;
	//封装文件上传类型
	private String uploadContentType;
	//封装文件上传名称
	private String uploadFileName;
	
	//接受struts.xml文件配置的方法
	private String savePath;
	
	//允许的上传类型
	private String allowTypes;
	
	public String getAllowTypes() {
		return allowTypes;
	}


	public void setAllowTypes(String allowTypes) {
		this.allowTypes = allowTypes;
	}


	public File getUpload() {
		return upload;
	}


	public void setUpload(File upload) {
		this.upload = upload;
	}


	public String getUploadContentType() {
		return uploadContentType;
	}


	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}


	public String getUploadFileName() {
		return uploadFileName;
	}


	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}


	public String getSavePath() {
		return ServletActionContext.getServletContext().getRealPath("/WEB-INF/"+savePath);
	}


	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}


	@Override
	public String execute() throws Exception {
		FileOutputStream fos=new FileOutputStream(getSavePath()+"/"+getUploadFileName());
		FileInputStream fis=new FileInputStream(getUpload());
		byte[] buffer=new byte[10240];
		int len;
		while((len=fis.read(buffer))>0){
			fos.write(buffer,0,len);
		}
		return SUCCESS;
	}
	
	private String filterType(String[] types){
		for(String type:types){
			if(type.equals(getUploadContentType())){
				return null;
			}
		}
		return ERROR;
	}
	//<!-- 手动实现文件过滤 -->
	@Override
	public void validate(){
		String filterResult=filterType(getAllowTypes().split(","));
		if(filterResult!=null){
			addActionError("不允许的上传类型");
		}
	}

}
