<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Processing Loan Details</title>
<style type="text/css">
<%@include file="css/admin-navbar.css"%>
<%@include file="css/table-style.css"%>
</style>
</head>
<body style="background-color: #808080;">
<div>
<nav>
			<div id="logo">LOAN MANAGEMENT SYSTEM (Admin)</div>

			<label for="drop" class="toggle">Menu</label> <input type="checkbox"
				id="drop" />
			<ul class="menu">
				<li><a href="/home/loanmanagementhomepage">Home</a></li>
				<li>
					<!-- First Tier Drop Down --> <label for="drop-1" class="toggle">Update
						+</label> <a href="#">Update</a> <input type="checkbox" id="drop-1" />
					<ul>
						<li><a href="/loandetails/adminupdateloandetails">Update Loan Details</a></li>
						<li><a href="/loan/adminupdateloan">Update Loan Type</a></li>
						<li><a href="/user/updateuserdetails">Update Admin Details</a></li>
					</ul>

				</li>
				<li>
					 <label for="drop-1" class="toggle">List ALL+
						</label> <a href="#">List All</a> <input type="checkbox" id="drop-1" />
					<ul>
						<li><a href="/user/getallusers">List All Users</a></li>
						<li><a href="/loan/getallloan">List All Loans</a></li>
					</ul>

				</li>
				
				<li>
				 <label for="drop-2" class="toggle">View
						& Status+</label> <a href="#">Loan Status</a> <input type="checkbox"
					id="drop-2" />
					<ul>
						<li><a href="/loandetails/loanapproved">Approved</a></li>
						<li><a href="/loandetails/loanapplied">Applied</a></li>
						<li>
						<li><a href="/loandetails/loanrejected">Rejected</a></li>
						<li><a href="/loandetails/loanprocessing">Processing</a></li>
						<li>
							<!-- Second Tier Drop Down --> <label for="drop-3" class="toggle">View
								+</label> <a href="#">View</a> <input type="checkbox" id="drop-3" />

							<ul>
								<li><a href="/user/viewLoanDetailsanduserdetails">Loan Details By User ID</a></li>
								<li><a href="/user/viewformuserandemidetails">EMI Details By User ID</a></li>
								<li><a href="/loan/viewloanandloandetailsbyloanid">Loan Details By Loan ID</a></li>
								<li><a href="/loan/viewloanandemidetailsbyloanid">EMI Details By Loan ID</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a href="/home/loanmanagementhomepage">Sign Out</a></li>
				<li><a href="#">About</a></li>
			</ul>
		</nav>
</div>
	<div id="table root">
		<table id="loan" ><caption></caption>
			<thead>
				<tr>
					<th scope="col">User ID</th>
					<th scope="col">Loan ID</th>
					<th scope="col">Loan Date</th>
					<th scope="col">Loan Amount</th>
					<th scope="col">No of EMI's</th>
					<th scope="col">Due Date</th>
					<th scope="col">Paid Date</th>
					<th scope="col">Paid EMI</th>
					<th scope="col">Pending EMI</th>
					<th scope="col">Interest</th>
					<th scope="col">EMI Amount </th>
					<th scope="col">Total Amount</th>
					<th scope="col">Loan Status</th>
					<th scope="col">UPDATE</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="loandet" items="${loanprocessing}">
					<tr>
						<td>${loandet.userId}</td>
						<td>${loandet.loanId}</td>
						<td>${loandet.loanDate}</td>
						<td>${loandet.loanAmount}</td>
						<td>${loandet.noOfEmis}</td>
						<td>${loandet.dueDate}</td>
						<td>${loandet.emiPaid}</td>
						<td>${loandet.noOfEmiPaid}</td>
						<td>${loandet.noOfEmiPending}</td>
						<td>${loandet.interest}</td>
						<td>${loandet.monthlyEMIAmount}</td>
						<td>${loandet.totalAmount}</td>
						<td>${loandet.loanStatus}</td>
						<td><button onclick = "window.location.href='/loandetails/updateloandetailsform?userid=${loandet.userId}'">Update</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>