<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List User Details and Loan details By User ID </title>
<style>
<%@include file="css/admin-navbar.css"%>
<%@include file="css/table-style.css"%>
</style>
</head>
<body style="background-color: powderblue;">
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
 <div id="user">
 	 <h2>User Details and Loan  Details Form</h2>
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
                <tr>
                 	    <td>${getuserdetails.userId}</td>
						<td>${getuserdetails.userName}</td>
						<td>${getuserdetails.gender}</td>
						<td>${getuserdetails.age}</td>
						<td>${getuserdetails.dob}</td>
						<td>${getuserdetails.phoneNumber}</td>
						<td>${getuserdetails.pancardNumber}</td>
						<td>${getuserdetails.accountNumber}</td>
						<td>${getuserdetails.email}</td>
						<td>${getuserdetails.address}</td>
						<td>${getuserdetails.pincode}</td>
						<td>${getuserdetails.role}</td>
                   
                </tr>
            </tbody>
        </table>
    </div>
    <br>
	<div id="loandetails">
		<table id="loan">
			<thead>
				<tr>
					<th>User ID</th>
					<th>Loan ID</th>
					<th>Loan Date</th>
					<th>Loan Amount</th>
					<th>No of EMI's</th>
					<th>Due Date</th>
					<th>Paid Date</th>
					<th>Paid EMI's</th>
					<th>Pending EMI's</th>
					<th>Interest</th>
					<th>EMI Amount</th>
					<th>Total Amount</th>
					<th>Loan Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="loandetails" items="${loandetails}">
					<tr>
						<td>${loandetails.userId}</td>
						<td>${loandetails.loanId}</td>
						<td>${loandetails.loanDate}</td>
						<td>${loandetails.loanAmount}</td>
						<td>${loandetails.noOfEmis}</td>
						<td>${loandetails.dueDate}</td>
						<td>${loandetails.emiPaid}</td>
						<td>${loandetails.noOfEmiPaid}</td>
						<td>${loandetails.noOfEmiPending}</td>
						<td>${loandetails.interest}</td>
						<td>${loandetails.monthlyEMIAmount}</td>
						<td>${loandetails.totalAmount}</td>
						<td>${loandetails.loanStatus}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>