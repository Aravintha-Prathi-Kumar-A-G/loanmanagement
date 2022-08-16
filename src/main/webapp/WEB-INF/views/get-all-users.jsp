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
#loan1 {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#loan1 td, # th {
  border: 1px solid #4E5180;
  padding: 8px;
}

#loan tr:nth-child(even){background-color: #F3E3C3;}

#loan tr:hover {background-color: #FF7082;}

#loan th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #800080;
  color: white;
}
h1, h2, h3 {
    text-align: center;
}
table, th, td {
    border: 2px solid black;
    border-collapse: collapse;
    margin-left: auto;
    margin-right: auto;
    text-align: center;
}
</style>
</head>
<body style="background-color: powderblue;">
<h1>List All Users</h1>
	<div id="table root">
		<table id="loan">
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