<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>HOME PAGE</title>
<style type="text/css">
<%@include file="css/homepage.css"%>
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/scripts.js"></script>
<script>
    $(window).scroll(function() {
        if ($(document).scrollTop() > 50) {
            $('.nav').addClass('affix');
            console.log("OK");
        } else {
            $('.nav').removeClass('affix');
        }
    });
</script>
<script type="text/javascript">
$('.navTrigger').click(function () {
    $(this).toggleClass('active');
    console.log("Clicked menu");
    $("#mainListDiv").toggleClass("show_list");
    $("#mainListDiv").fadeIn();

});
</script>
</head>
<body>
<div id="root">
 <nav class="nav">
        <div class="container">
            <div class="logo">
                <a href="#">Loan Management System</a>
            </div>
            <div id="mainListDiv" class="main_list">
                <ul class="navlinks">
                    <li><a href="/home/loanmanagementhomepage">Home</a></li>
                    <li><a href="/home/signin">Sign In</a></li>
                    <li><a href="/user/adduserform">Sign Up</a></li>
                    <li><a href="#">About</a></li>
                </ul>
            </div>
        
        </div>
    </nav>

    <section class="home">
    </section>
    <div style="height: 1000px">
        <!-- just to make scrolling effect possible -->
			<h2 class="myH2">Loan Management System </h2>
			<p class="myP">Developed By Chainsys</p>
			<p class="myP">Abstract</p>
				<p class="myP">
				
				Loan Management System is a project developed to provide an easy way to apply loan. Users can get
information about applying loan and can apply online. By using this application user's can save lot of time. Users need
to fill the details of identity cards like Pan and bank account details. All the user's details will be verified by the bank
authority and status of loan. User can get notification regarding loan whether approved or rejected. Users can views
the details of the loan after approved. User can apply get all the information about the loan from anywhere and at
anytime.

			</p>
    </div>
</div>
</body>
</html>