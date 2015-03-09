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
    
    <title>Struts 2 form 相关标签</title>
    
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
    <s:form action="tag1">
   		<!-- 使用List集合生成多个复选框 -->
   		<s:checkboxlist name="book" list="{'疯狂Java讲义','疯狂Java EE企业实战应用','C语言入门与精通'}" label="喜欢的书" labelposition="top"/>
    	<!-- 使用Map集合生成多个复选框 -->
    	<s:checkboxlist name="book" list="#{'疯狂Java讲义':'LEE','疯狂Java EE企业实战应用':'LEE','C语言入门与精通':'LEE'}" label="喜欢的书" labelposition="top" listKey="value" listValue="key"/>
    
    	<!-- 级联列表框 -->
    	<s:doubleselect label="两个列表项" name="author" doubleList="top=='李刚'?{'struts2权威指南','疯狂Java讲义'}:{'JavaScript','Jquery Defintive'}" list="{'李刚','David'}" doubleName="books"></s:doubleselect>
    	<s:set name="books" value="#{'李刚':{'疯狂Java讲义','疯狂Java EE企业实战应用'},'David':{'JavaScript'},'Jhoneson':{'J2EE'}}"></s:set>
    	<s:doubleselect label="多个列表项" name="shop"  doubleList="#books[top]" list="#books.keySet()" doubleName="bookshop"></s:doubleselect>
   	
   		<s:optiontransferselect name="cnBook" doubleList="{'JavaScript','Jquery'}" list="{'疯狂Java讲义','疯狂Java EE企业实战应用','C语言入门与精通'}" doubleName="enBook"
   			leftTitle="中文图书" rightTitle="英文图书" addToLeftLabel="向左移动" addToRightLabel="向右移动" addAllToRightLabel="全部右移" selectAllLabel="全部选择" headerKey="cnKey" headerValue="--选择中文图书--"
   			 doubleHeaderKey="enKey" doubleHeaderValue="--选择英文图书--"
   		></s:optiontransferselect>
   		
   		<!-- 使用List集合生成下拉选择框 -->
   		<s:select list="{'疯狂Java讲义','疯狂Java EE企业实战应用','C语言入门与精通'}" label="喜欢的书">
   			<s:optgroup label="Red Joneson" list="#{'JavaScript Mode':'David' }" listKey="key" listValue="key"></s:optgroup>
   		</s:select>
    
    	<!-- 使用Map集合生成radio集合 -->
    	<s:radio name="radios" list="#{'疯狂Java讲义':'LEE','疯狂Java EE企业实战应用':'LEE','C语言入门与精通':'LEE'}" listKey="key" listValue="key"></s:radio>
   	
   		<!-- Token标签(主要是为了防止表单的多次提交 -->
   		<s:token/>
   		
   		<!-- 下面是updownselect的实例 -->
   		<s:updownselect name="downselect" list="#{'JavaScript Mode':'David','疯狂Java讲义':'LEE' }" listKey="key" listValue="key" moveDownLabel="向下移动"></s:updownselect>
   		<s:submit value="提交"></s:submit>
    </s:form>
  </body>
</html>
