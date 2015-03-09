<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'welcome.jsp' starting page</title>
    
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
  <h1>第四章convertor对应的欢迎页面</h1>
  <h2><s:property value="tip"/></h2> 
    <!-- ${sessionScope.user.name },欢迎你！ <br/> -->
    <h2>第二个表单的内容</h2>
    <!-- 从ActionContext中取name的值     -->
    <s:iterator value="users" var="u">
    <!-- 这里需要从ActionContext中取name的值     -->
    	<s:property value="#u.name"/><br/>
    	<s:property value="#u.age"/><br/>
    </s:iterator>
    <!-- 先看Action中有没有name属性，如果没有，则到ActionContext中找name的值 
    name: <s:property value="name"/> <br/>-->
    
     <!-- 依次搜索page/request/session/application scope取值 
    attr.postcode=<s:property value="#attr.postcode"/> <br/>-->
    用户名：<s:property value="user.name"/><br/>
   	年龄：<s:property value="user.age"/><br/>
   	用户：<s:property value="users"/>
   	用户名:<s:property value="users('Jane').age"/>
    
  </body>
</html>
