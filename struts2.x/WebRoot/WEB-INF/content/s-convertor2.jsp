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
    
    <title>My JSP 's-convertor2.jsp' starting page</title>
    
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
      <h3>带有校验规则文件的表单</h3>
    	<s:form action="register_validate.action" validate="true">
    	<s:textfield name="name" label="用户名"/>
    	<s:textfield name="pass" label="密码"/>
    	<s:textfield name="age" label="年龄"/>
    	<s:textfield name="birth" label="生日"/>
    	<s:submit label="注册" />
    </s:form>
    
    <!-- 
    <s:form action="new_validate" >
        <s:textfield name="msg" label="姓名"  />
        <s:textfield name="age" label="年龄"/> 
        <s:submit/>
    </s:form>
    -->
    
    <h3>使用带有校验规则类型visitor的表单</h3>
    	<s:form action="validate_vist.action"  validate="true"><!-- 在这里最好加上.action否则可能会报异常 -->
    	<s:textfield name="user.name" label="用户名"/>
    	<s:textfield name="user.age" label="年龄"/>
    	<s:submit label="注册" />
    </s:form>
    错误信息: <s:fielderror/>
  </body>
</html>
