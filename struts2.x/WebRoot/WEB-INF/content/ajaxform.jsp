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
    
    <title>My JSP 'ajaxform.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-1.11.2.js">
	</script>
  </head>
  
  <body>
    <s:form id="loginForm">
    	<s:textfield name="user" label="用户名"></s:textfield>
    	<s:password name="pass" label="密码"></s:password>
    	<tr><td colspan="2">
    	<input type="button" id="loginBtn" value="登录"/>
    	</td></tr>
    </s:form>
    <div id="result" style="display:none"> </div>
    <script type="text/javascript">
    	$("#loginBtn").click(function(){
    		$.get("login_ajax.action",$("#loginForm"),
    			function(data,statusText){
    				$("#result").height(80).width(300).css("border","1px solid black")
    					.css("color","#ff0000").css("padding","20px").empty();
    				$("#result").append("登录结果:"+data+"<br/>");
    				$("#result").show(2000);
    			},"html");
    	});
    </script>
  </body>
</html>
