<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<style type="text/css">
<%@include file="css/admin-navbar.css"%>
body
{
background-image: url("https://www.graphen.ai/products/img/loan1.jpeg");
	 min-height: 680px;
	  background-position: center;
	  background-repeat: no-repeat;
	  background-size: cover;
	  position: relative;
}
</style>
</head>
<body>
	<div>
		<nav>
			<div id="logo">LOAN MANAGEMENT SYSTEM (Admin)</div>

			<label for="drop" class="toggle">Menu</label> <input type="checkbox"
				id="drop" />
			<ul class="menu">
				<li><a href="/home/adminpage?userId=${userId}">Home</a></li>
				<li>
					<!-- First Tier Drop Down --> <label for="drop-1" class="toggle">Update
						+</label> <a href="#">Update</a> <input type="checkbox" id="drop-1" />
					<ul>
						<li><a href="/loandetails/adminupdateloandetails">Update Loan Details</a></li>
						<li><a href="/loan/adminupdateloan">Update Loan Type</a></li>
						<li><a href="/user/updateuserform?userId=${userId}">Update Admin Details</a></li>
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
				<li><a href="/home/about">About</a></li>
			</ul>
		</nav>
	</div>
</body>
</html>