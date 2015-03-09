package com.action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

/*
 * 通过ServletResponseAware使用response
 */
public class LoginAction2 implements Action, ServletResponseAware {
	private String username;
	private String password;
	
	private HttpServletResponse response;
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
	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		// TODO Auto-generated method stub
		response=arg0;
		/*
		 * 也可以通过如下方式获取Servlet API
		 */
		/*ServletActionContext.getRequest();
		ServletActionContext.getResponse();
		ServletActionContext.getPageContext();
		ServletActionContext.getServletContext();*/
	}

	private String tip;
	
	
	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	@Override
	public String execute() throws Exception {
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
			ActionContext.getContext().put("tips", "welcome");
			
			//通过得到的response设置cookie里的值
			Cookie cook=new Cookie("user",getUsername());
			cook.setMaxAge(60*60);
			response.addCookie(cook);
			
			setTip("登录成功提示");
			return SUCCESS;
		}else{
			setTip("登录失败提示");
			return ERROR;
		}
	}

}
