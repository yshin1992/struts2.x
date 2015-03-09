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
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
  <!-- 
  	<s:form action="mine/login!register">
  		<s:textfield name="username" key="user"/>
  		<s:textfield name="password" key="pass"/>
  		<s:submit key="login"></s:submit>
  	</s:form>
  	 
  	 <s:form action="login_plain">
  		<s:textfield name="username" key="user"/>
  		<s:textfield name="password" key="pass"/>
  		<s:submit key="login"></s:submit>
  	</s:form>
  	
  	
  	<s:form action="login_redirect">
  		<s:textfield name="username" key="user"/>
  		<s:textfield name="password" key="pass"/>
  		<s:submit key="login"></s:submit>
  	</s:form>
  	
  	<s:form action="login_redirectAction">
  		<s:textfield name="username" key="user"/>
  		<s:textfield name="password" key="pass"/>
  		<s:submit key="login"></s:submit>
  	</s:form>
  	
  	<s:form action="login_exception">
  		<s:textfield name="username" key="user"/>
  		<s:textfield name="password" key="pass"/>
  		<s:submit key="login"></s:submit>
  	</s:form>
  	<s:form action="simple_login">
  		<s:textfield name="username" key="user"/>
  		<s:textfield name="password" key="pass"/>
  		<s:submit key="login"></s:submit>
  	</s:form>
  	-->
  	
  	
  	<s:form action="mine/login.action">
  		<s:textfield name="username" key="user"/>
  		<s:textfield name="password" key="pass"/>
  		<s:submit key="login"></s:submit>
  	</s:form>
  	
  	<s:form action="login_plain">
  		<s:textfield name="username" key="user"/>
  		<s:textfield name="password" key="pass"/>
  		<s:submit key="login"></s:submit>
  	</s:form>
  	
  	<s:form action="struts2DataLabel.jsp">
  		<s:textfield name="author" key="user"/>
  		<s:textfield name="password" key="pass"/>
  		<s:submit key="login"></s:submit>
  	</s:form>
  </body>
</html>
