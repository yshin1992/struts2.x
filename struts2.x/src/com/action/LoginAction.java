package com.action;

import java.util.Date;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private String username;
	private String password;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	private String tip;
	
	
	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public String register() throws Exception{
		return "register";
	}
	
	@Override
	public String execute() throws Exception {
		System.out.println(getUsername()+":"+getPassword());
		// TODO Auto-generated method stub
		if("admin".equals(getUsername())&&"admin".equals(getPassword())){
			//在sessionScope范围内设置用户名
			ActionContext.getContext().getSession().put("user", getUsername());
			//在applicationScope内设置登录次数
			Integer count=(Integer) ActionContext.getContext().getApplication().get("count");
			if(count==null){
				ActionContext.getContext().getApplication().put("count", 1);
			}else{
				ActionContext.getContext().getApplication().put("count", ++count);
			}
			
			//通过ActionContext设置request范围内的提示
			ActionContext.getContext().put("tips", getText("welcomeMsg",new String[]{getUsername(),String.valueOf(new Date())}));
			
			setTip("登录成功提示");
			return SUCCESS;
		}else{
			setTip("登录失败提示");
			return ERROR;
		}
	}

}
