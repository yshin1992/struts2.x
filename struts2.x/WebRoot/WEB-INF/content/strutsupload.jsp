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
    
    <title>My JSP 'strutsupload.jsp' starting page</title>
    
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
    <s:form action="fileupload.action" enctype="multipart/form-data" method="post">
    	<s:file name="upload" label="选择文件"/>
    	<s:submit value="上传"></s:submit>
    </s:form>
    
    <h3>使用系统拦截器过滤文件的表单</h3>
    <s:form action="fileupload2.action" enctype="multipart/form-data" method="post">
    	<s:file name="upload" label="选择文件"/>
    	<s:submit value="上传"></s:submit>
    </s:form>
    <s:actionerror/>
  </body>
</html>
