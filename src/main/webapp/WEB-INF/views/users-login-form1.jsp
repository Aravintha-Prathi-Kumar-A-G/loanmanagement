<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Users Login Form | Loan Management System</title> 
<style type="text/css">
body {
    background-image:
        url("https://media.istockphoto.com/photos/person-holds-a-smartphone-with-mobile-banking-icons-projection-picture-id1304484797?b=1&k=20&m=1304484797&s=170667a&w=0&h=Z8RFNCQoyUz1lXq9eZK55DuwA8TPRcPcIAJDR7HDjpk=");
     height: 768px;
    width: 1366px; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}
</style>
<style>
*{
text-align: center;
}
</style>
</head>

<body >

<div >
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
				<a href="/user/adduserform">sign up</a>
				</form:form>
</div>
</body>
</html>