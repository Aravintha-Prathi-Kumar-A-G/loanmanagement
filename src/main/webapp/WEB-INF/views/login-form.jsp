<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>login Form</title>
<style>
<%@include file="css/signin.css"%>
</style>
</head>
<body>
	<div class="app">
		<div class="bg"></div>
		<form action="userpage" method="post" modelAttribute="signin">
			<header>
				<img src="https://totalbanksolutions.com/wp-content/uploads/2021/07/lms-featured-image.svg" alt="">
			</header>
			<br> <br>
			<div class="inputs">
				<input type="text" id="email" name="email" placeholder="Email ID">
				<input type="password" id="password" name="password" placeholder="Password">

			</div>
			
			<br>
					<button>Sign In</button>
		</form>
		<footer>
			<div>
                <div style="color: red;">${message}</div>
            </div>
			<p>
				Don't have an account? <a href="/user/adduserform">Sign Up</a>
			</p>
		</footer>


	</div>
</body>
</html>