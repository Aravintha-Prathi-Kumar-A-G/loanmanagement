<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get All Users List</title>
<style>
<%@include file="css/table-style.css"%>
</style>
</head>
<body style="background-color:#5bb5c1;">
<h1>List All Users</h1>
	<div id="table root">
		<table id="loan"><caption></caption>
			<thead>
				<tr>
					<th scope="col">User ID</th>
					<th scope="col">Users Name</th>
					<th scope="col">Gender</th>
					<th scope="col">Age</th>
					<th scope="col">Date Of Birth</th>
					<th scope="col">Phone Number</th>
					<th scope="col">Pancard Number</th>
					<th scope="col">Account Number</th>
					<th scope="col">Email</th>
					<th scope="col">Address</th>
					<th scope="col">Pincode</th>
					<th scope="col">Role</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="users" items="${getallusers}">
					<tr>
						<td>${users.userId}</td>
						<td>${users.userName}</td>
						<td>${users.gender}</td>
						<td>${users.age}</td>
						<td>${users.dob}</td>
						<td>${users.phoneNumber}</td>
						<td>${users.pancardNumber}</td>
						<td>${users.accountNumber}</td>
						<td>${users.email}</td>
						<td>${users.address}</td>
						<td>${users.pincode}</td>
						<td>${users.role}</td>
						<%-- <td>${users.password}</td> --%>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>