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
  <h1><s:property value="tip"/></h1> 
    ${sessionScope.user },欢迎你！ <br/>
    本站共访问${applicationScope.count }次<br/>
    ${requestScope.tips },${cookie.user.value }
    <h1>国际化消息</h1>
    <jsp:useBean id="date" class="java.util.Date" scope="page"></jsp:useBean>
    <s:text name="welcomeMsg">
    	<s:param>Jones</s:param>
    	<s:param>${date }</s:param>
    </s:text>
  </body>
</html>
