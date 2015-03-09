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
    
    <title>Struts2 数据标签实例</title>
    
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
   	<h3>下面是s:bean的实例</h3>
  	<s:bean name="com.bean.Person" var="person">
  	<!-- 注意字符串需要添加引号 -->
  		<s:param name="name" value="'Lee'"></s:param>
  		<s:param name="age" value="16"></s:param>
  	</s:bean>  
  	
  	Person.name:<s:property value="#person.name"/><br/>
  	Person.age:<s:property value="#person.age"/>
  	
  	<h3>下面是s:date标签的实例</h3>
  	<s:bean name="java.util.Date" var="date"></s:bean>
  	日期1：<s:date format="dd/MM/yyyy" nice="false" name="date"/><br/>
  	日期2(nice字段为true,指定日期和当前时刻之差)：<s:date format="dd/MM/yyyy hh:mm:ss" nice="false" name="date"/><br/>
  	日期3：<s:date name="date"/><br/>
  	
  	<h3>下面是s:debug标签的实例</h3>
  	<s:debug></s:debug>
  	
  	<h3>下面是s:include标签</h3>
  	<s:include value="struts2DataLabel_tag.jsp">
  		<s:param name="author" value="'Jane'"/>
  	</s:include>
  	
  	<h3>下面是s:push的实例(使用s:push将某个值放入ValueStack的栈顶)</h3>
  	<s:push value="person">
  		<s:property value="name"/>/<s:property value="age"/>
  	</s:push>
  	
  	<h3>c:set实例略，其scope属性值有5个:application,session,page,request,action(默认)</h3>
  	<h3>下面是s:url的实例，用于生产一个URL地址</h3>
  	生成一个简单的action地址:<s:url action="tag1"/><br/>
  	带参数的action地址,并且指定锚点:<s:url action="tag1" anchor="ttt"><s:param name="author">Lee</s:param></s:url><br/>
  	不指定action和value，使用includeParam:<s:url includeParams="get"><s:param name="age">22</s:param></s:url>
  </body>
</html>
