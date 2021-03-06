<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Volunteer Tracking</title>

		<link href='<spring:url value="/css/login.css"/>' rel="stylesheet" />
		<link href='<spring:url value="/css/normalize.css" />' rel="stylesheet" />
		<link href='<spring:url value="/css/slicknav.css" />' rel="stylesheet" />
		<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
		<script type="text/javascript" src='<spring:url value="/js/jquery.slicknav.min.js" />' ></script>
		<script type="text/javascript">
			$(document).ready(function(){
			$('#nav_menu').slicknav({prependTo:"#mobile_menu"});
			});
		</script>
	</head>
	<body>
		<header>
			<h2>Rotary Botanical Gardens</h2>
			<h3>Volunteer Time Tracker</h3>
		</header>
			<div class="login">
				<div class="login-header">
					<h1>Login</h1>
				</div>
				<div class="login-form">
				<form:form action="loginUser" method="post" modelAttribute="volunteerCredential">
					<h3>Username:</h3>
					<form:input path="username" placeholder="Username"/><br>
					<h3>Password:</h3>
					<form:input path="password" type="password" placeholder="Password" /><br>
					<button type="submit">Login</button><br>
					<h6 class="no-access">Can't access your account?</h6>
				</form:form>
				</div>
				
			</div>
		
	</body>
</html>