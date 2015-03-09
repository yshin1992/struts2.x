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
    
    <title>My JSP 's-convertor.jsp' starting page</title>
    
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
    <s:form action="login_conver.action">
    	<s:textfield name="user.name" key="user"/>
    	<s:textfield name="user.age" key="age"/>
    	<s:submit key="login" />
    </s:form>
    <s:form action="login_convers2.action">
    	<!--<s:textfield name="users[0].name" label="用户1名称"/>
    	<s:textfield name="users[0].age" label="用户1年龄"/>
    	<s:textfield name="users[1].name" label="用户2名称"/>
    	<s:textfield name="users[1].age" label="用户2年龄"/>-->
    	<!-- 使用迭代器 -->
    	<s:iterator value="{0,1,2}" status="st">
    		<s:textfield name="users[#st.index].name" label="第%{#st.count}个用户名称"></s:textfield>
    		<s:textfield name="users[#st.index].age" label="第%{#st.count}个用户年龄"></s:textfield>
    	</s:iterator>
    	<s:submit key="login" />
    </s:form>
    
    <s:form action="login_convers3.action">
    	<s:textfield name="user" key="user"/>
    	<s:submit key="login" />
    </s:form>
    <h3>Set集合验证表单</h3>
      <s:form action="login_convers4.action">
    	<s:textfield name="users" key="user"/>
    	<s:textfield name="users" key="user"/>
    	<s:submit key="login" />
    </s:form>
   
  </body>
</html>
