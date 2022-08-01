<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get All Users List</title>
</head>
<body style="background-color: powderblue;">
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>User ID</th>
					<th>Users Name</th>
					<th>Gender</th>
					<th>Age</th>
					<th>Date Of Birth</th>
					<th>Phone Number</th>
					<th>Pancard Number</th>
					<th>Account Number</th>
					<th>Email</th>
					<th>Address</th>
					<th>Pincode</th>
					<th>Role</th>
					<th>Password</th>
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
						<td>${users.password}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>