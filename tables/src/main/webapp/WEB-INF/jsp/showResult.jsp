<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.henry.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <base href="<%=basePath%>">
<%! String path ="showResult";%>


<title>结果</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>


<body>

<div align="center">
   
  <table align="center" border="1">
    <tr align="center">
	    <td>ID</td>
	    <td>姓名</td>
	    <td>生日</td>
	    <td>公司</td>
	    <td>公司地址</td>
    </tr>
    

   
   <c:forEach items="${unions}" var="union" begin="${startPos}" end="${endPos}">	
	<tr align="center">		
	  <td>${union.id}</td> 
	   <td>${union.userName}</td>
	   <td><fmt:formatDate value="${union.birthday}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	  <td> ${union.getCompany().companyName}</td>
	 <td> ${union.getCompany().address}</td>
	 </tr>   
 </c:forEach>
 
	</table>
	</div>


	</table>
	</div>
	
	<!-- 分页功能 start -->

	
	
<div align="center">

		<font size="2">共 ${page.totalPageCount} 页</font> 
		
		<font size="2">第 ${page.pageNow} 页</font> <a href="user/showResult?pageNow=1">首页</a>

		<c:choose>

			<c:when test="${page.pageNow - 1 > 0}">

				<a href="user/showResult?pageNow=${page.pageNow - 1}">上一页</a>

			</c:when>

			<c:when test="${page.pageNow - 1 <= 0}">

				<a href="user/showResult?pageNow=1">上一页</a>

			</c:when>

		</c:choose>

		<c:choose>

			<c:when test="${page.totalPageCount==0}">

				<a href="user/showResult?pageNow=${page.pageNow}">下一页</a>

			</c:when>

			<c:when test="${page.pageNow + 1 < page.totalPageCount}">

				<a href="user/showResult?pageNow=${page.pageNow + 1}">下一页</a>

			</c:when>

			<c:when test="${page.pageNow + 1 >= page.totalPageCount}">

				<a href="user/showResult?pageNow=${page.totalPageCount}">下一页</a>

			</c:when>

		</c:choose>

		<c:choose>

			<c:when test="${page.totalPageCount==0}">

				<a href="user/showResult?pageNow=${page.pageNow}">尾页</a>

			</c:when>

			<c:otherwise>

				<a href="user/showResult?pageNow=${page.totalPageCount}">尾页</a>

			</c:otherwise>

		</c:choose>

	</div>
	<!-- 分页功能 End -->

</body>
</html>
