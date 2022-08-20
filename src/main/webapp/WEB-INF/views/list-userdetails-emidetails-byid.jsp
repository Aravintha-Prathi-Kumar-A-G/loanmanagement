<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Details & Loan EMI Details Tables</title>
<style>
<%@include file="css/admin-navbar.css"%>
<%@include file="css/table-style.css"%>
</style>
</head>
<body style="background-color: #5bb5c1;">
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
       <h2>User and Loan EMI Details </h2>
        <table id="loan" ><caption></caption>
            <thead>
                <tr>
                    <th scope="col">User ID</th>
					<th scope="col">Users Name</th>
					<th scope="col">Gender</th>
					<th scope="col">Age</th>
					<th scope="col">Date Of Birth</th>
					<th scope="col">Phone Number</th>
					<th scope="col">Pan</th>
					<th scope="col">Account Number</th>
					<th scope="col">Email</th>
					<th scope="col">Address</th>
					<th scope="col">Pincode</th>
					<th scope="col">Role</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                 	    <td>${getuser.userId}</td>
						<td>${getuser.userName}</td>
						<td>${getuser.gender}</td>
						<td>${getuser.age}</td>
						<td>${getuser.dob}</td>
						<td>${getuser.phoneNumber}</td>
						<td>${getuser.pancardNumber}</td>
						<td>${getuser.accountNumber}</td>
						<td>${getuser.email}</td>
						<td>${getuser.address}</td>
						<td>${getuser.pincode}</td>
						<td>${getuser.role}</td>
                   
                </tr>
            </tbody>
        </table>
    </div>

    <div id="loan details">
        <table id="loan" ><caption></caption>
            <thead>
                <tr>
                    <th scope="col">User ID</th>
					<th scope="col">Loan ID</th>
					<th scope="col">EMI Date</th>
					<th scope="col">Payment Amount</th>
					<th scope="col">Payment ID</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="emidetails" items="${loanemidetails}">
                    <!-- var-variables,items-collection -->
                    <tr>
                      	<td>${emidetails.userId}</td>
						<td>${emidetails.loanId}</td>
						<td>${emidetails.emiDate}</td>
						<td>${emidetails.paymentAmount}</td>
						<td>${emidetails.paymentId}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>