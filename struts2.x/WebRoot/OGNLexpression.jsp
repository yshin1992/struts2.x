<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'OGNLexpression.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <s:if test="'bar' in {'bar','line'}">包含</s:if>
    <h3>使用OGNL访问静态成员</h3>
    需要先设置struts.ognl.allowStaticMethodAccess=true <br/>
    访问系统环境变量:<s:property value="@java.lang.System@getenv('Path')"/><br/>
    圆周率的值:<s:property value="@java.lang.Math@PI"/>
   <br/>Lambda表达式:斐波那契数列:<s:property value="#fib=:[#this==0?0:#this==1?1:#fib(#this-2)+#fib(#this-1)],fib(11)"/>
  </body>
</html>
