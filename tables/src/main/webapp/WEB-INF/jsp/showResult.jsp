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


<title>���</title>

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
	    <td>����</td>
	    <td>����</td>
	    <td>��˾</td>
	    <td>��˾��ַ</td>
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
	
	<!-- ��ҳ���� start -->

	
	
<div align="center">

		<font size="2">�� ${page.totalPageCount} ҳ</font> 
		
		<font size="2">�� ${page.pageNow} ҳ</font> <a href="user/showResult?pageNow=1">��ҳ</a>

		<c:choose>

			<c:when test="${page.pageNow - 1 > 0}">

				<a href="user/showResult?pageNow=${page.pageNow - 1}">��һҳ</a>

			</c:when>

			<c:when test="${page.pageNow - 1 <= 0}">

				<a href="user/showResult?pageNow=1">��һҳ</a>

			</c:when>

		</c:choose>

		<c:choose>

			<c:when test="${page.totalPageCount==0}">

				<a href="user/showResult?pageNow=${page.pageNow}">��һҳ</a>

			</c:when>

			<c:when test="${page.pageNow + 1 < page.totalPageCount}">

				<a href="user/showResult?pageNow=${page.pageNow + 1}">��һҳ</a>

			</c:when>

			<c:when test="${page.pageNow + 1 >= page.totalPageCount}">

				<a href="user/showResult?pageNow=${page.totalPageCount}">��һҳ</a>

			</c:when>

		</c:choose>

		<c:choose>

			<c:when test="${page.totalPageCount==0}">

				<a href="user/showResult?pageNow=${page.pageNow}">βҳ</a>

			</c:when>

			<c:otherwise>

				<a href="user/showResult?pageNow=${page.totalPageCount}">βҳ</a>

			</c:otherwise>

		</c:choose>

	</div>
	<!-- ��ҳ���� End -->

</body>
</html>
