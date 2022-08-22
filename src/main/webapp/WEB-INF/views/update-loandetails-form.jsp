<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Loan Details</title>
<style>
<%@include file="css/update-loandetails.css"%>
<%@include file="css/button.css"%>
</style>
<script type="text/javascript">
	function emiCalculation() {
		var loanAmount = document.getElementById("loanAmount").value;
		var noOfEMIperMonth = document.getElementById("noOfEmis").value;
		var interest = document.getElementById("interest").value;
		var monthlyEMI = document.getElementById("monthlyEMIAmount").value;

		var monthlyEMI2 = parseInt(loanAmount) * parseFloat(interest)
				/ parseInt(noOfEMIperMonth);
		var totalAmount = parseInt(monthlyEMI2) * parseInt(noOfEMIperMonth);

		document.getElementById("monthlyEMIAmount").value = monthlyEMI2;
		document.getElementById("totalAmount").value = totalAmount;

	}
</script>
<script type="text/javascript">
    function pendingEMI() {
    	var noOfEMIperMonth = document.getElementById("noOfEmis").value;
	    var noOfPendingEMIperMonth = noOfEMIperMonth;
		document.getElementById("noOfEmiPending").value = noOfPendingEMIperMonth;

	}
    </script>
</head>
<body>
<button class="button" onclick="history.back()">Go Back</button>
	<div id="form">
	<div class="container">
		<form:form action="updateloandetails" method="post"
			modelAttribute="loandetailsupdate">
			<div class="form">
				<h1>Update Loan Details</h1>
			<div>
					<label for="userId">User ID</label><br>
					<form:input type="number" path="userId" pattern="[0-9]{4}"
						title="user ID only contains Numbers" placeholder="enter User ID" 
						require="true" />
			</div>
			<br>
				<div>
					<label for="loanId">Loan ID</label><br>
					<form:input path="loanId" placeholder="enter Loan ID" />
				</div>
			<br>
			<div>
					<label for="loanDate">LOAN Issue Date </label>
					<form:input type="date" path="loanDate" require="true" />
				</div>
			<br>
			<div>
					<label for="noOfEmis">No Of EMI's</label>
					<form:select path="noOfEmis" id="noOfEmis">
						<form:option value="12" label="12 Months" required="true" />
						<form:option value="24" label="24 Months" required="true" />
						<form:option value="36" label="36 Months" required="true" />
						<form:option value="48" label="48 Months" required="true" />
					</form:select>
			</div>
			<br>
			<div>
					<label for="noOfEmiPaid">Paid EMI's</label>
					<form:input type="number" path="noOfEmiPaid"
						placeholder="Enter no of emi's paid in month" readonly="true" />
			</div>
			<br>
			<div>
					<label for="noOfEmiPending">Pending EMI's</label>
					<form:input type="number" path="noOfEmiPending" id="noOfEmiPending"
					 onclick="pendingEMI(this.form)" readonly="true" />
			</div>
			<br>
			 <div>
					<label for="dueDate">Due Date</label><br>
					<form:input type="date" path="dueDate"
						placeholder="enter EMI Due Date" required="true"  />
			</div>
			<br>
			<%-- <div>
				<div>
					<label for="emiPaid">EMI Paid Date</label>
					<form:input type="date" path="emiPaid"
						placeholder="enter EMI Paid Date " readonly="true" />
				</div>
			</div>
			<br> --%>
			<div>
					<label for="loanStatus">Loan Status</label>
					<form:select path="loanStatus">
						<form:option value="Applied" label="Applied" required="true" />
						<form:option value="Processing" label="Processing" required="true" />
						<form:option value="Approved" label="Approved" required="true" />
						<form:option value="Rejected" label="Rejected" required="true" />
					</form:select>
			</div>
			<br>
				<div>
					<label for="loanAmount">Loan Amount</label>
					<form:input type="number" path="loanAmount" id="loanAmount"
						name="loanAmount" onchange="emiCalculation()"
						title="Loan Amount only contains numbers"
						placeholder="Enter Loan Amount" />
			</div>
			<br>
			<div>
					<label for="interest">Interest %</label>
					<form:input type="text" title="It contains only numbers"
						path="interest" id="interest" pattern="[+-]?([0-9]+([.][0-9]*)?|[.][0-9]+)" name="interest"
						onchange="emiCalculation()" placeholder="enter Interest per Loan " />
			</div>
			<br>
			<div>
					<label for="monthlyEMIAmount">EMI Amount</label>
					<form:input type="number" path="monthlyEMIAmount"
						id="monthlyEMIAmount" name="monthlyEMIAmount"
						onchange="emiCalculation(this.form)" required="true"
						readonly="true" />
			</div>
			<br>
			<div>
					<label for="totalAmount">Total Amount</label>
					<form:input path="totalAmount" id="totalAmount" name="totalAmount"
						onchange="emiCalculation(this.form)" required="true"
						readonly="true" />
			</div>
			<br>
			<div>
                <button type="submit" value="Update Loan Details" class="signupbtn" onclick="msg()">Update</button>
                <br>
                <br>
                <button type="reset" class="cancelbtn">Reset</button>
                </div>
                </div>
		</form:form>
		</div>
	</div>
</body>
</html>