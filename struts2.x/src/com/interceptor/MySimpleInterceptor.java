package com.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class MySimpleInterceptor extends AbstractInterceptor {

	//简单拦截器的名字
	private String name;
	
	public void setName(String name){
		this.name=name;
	}
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		//获取被拦截的Action的实例
//		invocation.getAction();
		System.out.println(name+ " 拦截器的时间为 ："+new java.util.Date());
		Long start = System.currentTimeMillis();
		//执行该拦截器的后一个拦截器
		//若没有，直接执行Action的execute()方法
		String result=invocation.invoke();
		System.out.println(name+" 拦截器结束的时间 ："+new java.util.Date());
		Long end = System.currentTimeMillis();
		System.out.println("执行完action所用的时间为"+(end-start)+"ms");
		return result;
	}

}
