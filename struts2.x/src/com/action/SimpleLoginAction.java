package com.action;

import java.util.Date;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.PreResultListener;

@ParentPackage("convention-default")
@ResultPath("/view/")
@Result(name="success",location="login_success.jsp")
public class SimpleLoginAction extends ActionSupport {
	String username;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String execute() throws Exception {
		ServletActionContext.getRequest().getSession().setAttribute("user", getUsername());
		//添加PreResultListener,在Action控制处理之后，系统转入实际的物理视图之前被回掉
		ActionInvocation invocation=ActionContext.getContext().getActionInvocation();
		invocation.addPreResultListener(new PreResultListener() {
			
			@Override
			public void beforeResult(ActionInvocation invocation, String resultCode) {
				System.out.println("返回的逻辑视图："+resultCode);
				invocation.getInvocationContext().put("extras", new Date()+"由"+resultCode+"逻辑视图转入");
				//也可加入日志
			}
		});
		return SUCCESS;	
	}

}
