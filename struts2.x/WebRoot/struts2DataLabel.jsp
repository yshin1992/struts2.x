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
    
    <title>Struts 2 数据标签</title>
    
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
  <s:set name="author" value="Lee" scope="session"></s:set>
  调用第一个action，将结果包含到本页
  	<s:action name="tag1" executeResult="true" >
  	</s:action>  	
  	<hr/>
  	  调用第一个action，将结果包含到本页，但阻止参数传入本action
  	<s:action name="tag1" executeResult="true" ignoreContextParams="true">
  	</s:action>
  	<hr/>
  	下面调用第二个action,且不讲结果包含到本页面中
  	<s:action name="tag2" executeResult="false">
  	</s:action>本页面能否访问：<s:property value="author"/>
  
  	</body>
</html>
