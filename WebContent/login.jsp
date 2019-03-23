<%@ page language="java" contentType="text/html;" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@page import="javax.servlet.http.*,javax.servlet.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>

<head>
	<meta content="text/html;" charset="UTF-8">
	<title>Login</title>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
</head>

<body>
	<div class="header shadow">
		<a class="logo" href="${pageContext.request.contextPath}/admin/main.jsp"><img class="shadow"
				style="max-height: 60px;" src="${pageContext.request.contextPath}/img/graphic-seal.jpg"
				alt="SUNY Albany Seal"></a>
		<div class="logo-label"></div>
		<p>Not logged in.</p>
		<form action="Logout" method="post">
			<input style="text-decoration: none !important;" type="submit" value="Clear Session">
		</form>
	</div>

	<div class="login-main">
		<div class="form-container shadow">
			<form class="login-form" action="${pageContext.request.contextPath}/Login" method="post">
				<input id="email" name="email" type="email" placeholder="email" required> <input id="password"
					name="password" type="password" placeholder="password" required> <input id="submit" type="submit"
					value="LOGIN">
			</form>
			<%
				if (request.getParameter("success") != null) {
					if (request.getParameter("success").equals("false")) {
						out.println("<div id=\"error\"><p>" + request.getParameter("error") + "</p></div>");
					}
				}
			%>
		</div>
	</div>

	<div class="footer shadow">
		<p>A quiz application for the ICSI 418Y final project, Spring
			2019.</p>
	</div>
</body>

</html>