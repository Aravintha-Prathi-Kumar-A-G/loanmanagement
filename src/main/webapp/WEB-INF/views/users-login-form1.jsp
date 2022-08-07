<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Users Login Form | Loan Management System</title> 

</head>
<body style="background-color:#e91515; color:white;">
<div align="center">
	<form:form action="userpage" method="post" modelAttribute="signin">
				<div>
					<label for="userId"> User Id</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" />
					</div>
				</div>
				<div>
					<form:button>login</form:button>
					
				</div>
				
				<a href="new register">sign up</a>
				</form:form>
</div>
<div align="center">
     <div>${head}</div>
	 <div>${title}</div>
     <div>${message}</div>
     </div>
</body>
</html>