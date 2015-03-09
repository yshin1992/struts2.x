<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>Struts 2 控制标签</title>

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
		<h3>
			选择控制标签if / else
		</h3>
		<br>
		<s:if test="'b' in {'a','b','c'}">
   		'b' in {'a','b','c'}
   	</s:if>
		<s:elseif test="'b' not in  {'a','b','c'}">
    	'b' not in  {'a','b','c'}
    </s:elseif>
		<s:else>
   		 Logical errors!
    </s:else>
		<h3>
			迭代标签：iterator
		</h3>
		<table border="1">
			<!-- 输出List集合 -->
			<s:iterator value="{'疯狂Java讲义','疯狂Java EE企业实战应用','C语言入门与精通'}"
				id="name" status="st">
				<tr>
					<td <s:if test="#st.first">style="background-color:blue"</s:if>
						<s:elseif test="#st.last">style="background-color:yellow"</s:elseif>>
						<s:property value="#st.index" />
						&nbsp;
						<s:property value="#st.count" />
						&nbsp;
						<s:property value="name" />
					</td>
				</tr>
			</s:iterator>
		</table>
		<table border="1">
			<!-- 输出Map集合 -->
			<s:iterator
				value="#{'疯狂Java讲义':'LEE','疯狂Java EE企业实战应用':'LEE','C语言入门与精通':'LEE'}"
				id="name" status="st">
				<tr>
					<td <s:if test="#st.first">style="background-color:blue"</s:if>
						<s:elseif test="#st.last">style="background-color:yellow"</s:elseif>>
						<s:property value="#st.index" />
						&nbsp;
						<s:property value="#st.count" />
						&nbsp;
						<s:property value="key" />
					</td>
					<td <s:if test="#st.first">style="background-color:blue"</s:if>
						<s:elseif test="#st.last">style="background-color:yellow"</s:elseif>>
						<s:property value="#st.index" />
						&nbsp;
						<s:property value="#st.count" />
						&nbsp;
						<s:property value="value" />
					</td>
				</tr>
			</s:iterator>
		</table>
		<h3>
			集合拼接标签:append
		</h3>
		<br />
		<s:append var="newList">
			<s:param value="{'疯狂Java讲义','疯狂Java EE企业实战应用','C语言入门与精通'}"></s:param>
			<s:param value="{'疯狂Java讲义','疯狂Java EE企业实战应用','C语言入门与精通'}"></s:param>
		</s:append>
		<table border="1">
			<s:iterator value="#newList" id="name">
				<tr>
					<td>
						<s:property value="name" />
					</td>
				</tr>
			</s:iterator>
		</table>
		<h3>
			generator标签
		</h3>
		<br />

		<s:generator separator="," val="'疯狂Java讲义,疯狂Java EE企业实战应用,C语言入门与精通'"
			var="books">
			<!-- 在generator标签内，得到的List集合位于ValueStack顶端 -->
			<table border="1">
				<s:iterator value="#books">
					<tr>
						<td>
							<s:property />
						</td>
					</tr>
				</s:iterator>
			</table>
		</s:generator>
		${requestScope.books }
		<h3>
			使用merge标签合并集合
		</h3>
		<s:merge var="newList">
			<s:param value="{'疯狂Java讲义','疯狂Java EE企业实战应用','C语言入门与精通'}"></s:param>
			<s:param value="{'疯狂Java讲义','疯狂Java EE企业实战应用','C语言入门与精通'}"></s:param>
		</s:merge>
		<table border="1">
			<s:iterator value="#newList" id="name">
				<tr>
					<td>
						<s:property value="name" />
					</td>
				</tr>
			</s:iterator>
		</table>
		<h3>
			使用subset标签获取集合的子集
		</h3>
		<!-- 使用自定义的Decider来截取目标集合，生成子集 -->
		<s:bean var="mydecider" name="com.util.MyDecider" />
		<s:subset source="{'疯狂Java讲义','疯狂Java EE企业实战应用','C语言入门与精通'}" start="0"
			count="3" decider="mydecider">
			<s:iterator>
				<s:property />
			</s:iterator>
		</s:subset>

		<h3>
			使用sort标签对集合进行排序
		</h3>
		<s:bean var="mycomparator" name="com.util.MyComparator" />
		<s:sort comparator="mycomparator"
			source="{'疯狂Java讲义','疯狂Java EE企业实战应用','C语言入门与精通'}" var="newList">
			<s:iterator>
				<s:property/>
			</s:iterator>
		</s:sort>
	</body>
</html>
