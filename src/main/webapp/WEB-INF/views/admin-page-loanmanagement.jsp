<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Open+Sans);
@import url(https://fonts.googleapis.com/css?family=Bree+Serif);

 body {
	background-image: url("https://www.graphen.ai/products/img/loan1.jpeg");
	 min-height: 680px;
	  background-position: center;
	  background-repeat: no-repeat;
	  background-size: cover;
	  position: relative;
	font-size:22px;
	line-height: 32px;
	color: #ffffff;
	margin: 0;
	padding: 0;
	word-wrap:break-word !important;
	font-family: 'Open Sans', sans-serif;
	} 
h1 {
	font-size: 60px;
	text-align: center;
	color: #FFF;
}	

h3 {
	font-size: 30px;
	line-height: 34px;
	text-align: center;
	color: #FFF;
}

h3 a {
	color: #FFF;
}

a {
	color: #FFF;
}

h1 {
	margin-top: 100px;
	text-align:center;
	font-size:60px;
	line-height: 70px;
	font-family: 'Bree Serif', 'serif';
	}

#container {
	margin: 0 auto;
	max-width: 890px;
}

p {
	text-align: center;
}

.toggle,
[id^=drop] {
	display: none;
}

/* Giving a background-color to the nav container. */
nav { 
	margin:0;
	padding: 0;
	background-color: #025091;
}

#logo {
	display: block;
	padding: 0 30px;
	float: left;
	font-size:20px;
	line-height: 60px;
}

/* Since we'll have the "ul li" "float:left"
 * we need to add a clear after the container. */

nav:after {
	content:"";
	display:table;
	clear:both;
}

/* Removing padding, margin and "list-style" from the "ul",
 * and adding "position:reltive" */
nav ul {
	float: right;
	padding:0;
	margin:0;
	list-style: none;
	position: relative;
	}
	
/* Positioning the navigation items inline */
nav ul li {
	margin: 0px;
	display:inline-block;
	float: left;
	background-color: #025091;
	}

/* Styling the links */
nav a {
	display:block;
	padding:14px 20px;	
	color:#FFF;
	font-size:17px;
	text-decoration:none;
}


nav ul li ul li:hover { background: #FF7082; }

/* Background color change on Hover */
nav a:hover { 
	background-color: #FF7082; 
}

/* Hide Dropdowns by Default
 * and giving it a position of absolute */
nav ul ul {
	display: none;
	position: absolute; 
	/* has to be the same number as the "line-height" of "nav a" */
	top: 60px; 
}
	
/* Display Dropdowns on Hover */
nav ul li:hover > ul {
	display:inherit;
}
	
/* Fisrt Tier Dropdown */
nav ul ul li {
	width:170px;
	float:none;
	display:list-item;
	position: relative;
}

/* Second, Third and more Tiers	
 * We move the 2nd and 3rd etc tier dropdowns to the left
 * by the amount of the width of the first tier.
*/
nav ul ul ul li {
	position: relative;
	top:-60px;
	/* has to be the same number as the "width" of "nav ul ul li" */ 
	left:170px; 
}

	
/* Change ' +' in order to change the Dropdown symbol */
li > a:after { content:  ' +'; }
li > a:only-child:after { content: ''; }


/* Media Queries
--------------------------------------------- */

@media all and (max-width : 768px) {

	#logo {
		display: block;
		padding: 0;
		width: 100%;
		text-align: center;
		float: none;
	}

	nav {
		margin: 0;
	}

	/* Hide the navigation menu by default */
	/* Also hide the  */
	.toggle + a,
	.menu {
		display: none;
	}

	/* Stylinf the toggle lable */
	.toggle {
		display: block;
		background-color: #254441;
		padding:14px 20px;	
		color:#FFF;
		font-size:17px;
		text-decoration:none;
		border:none;
	}

	.toggle:hover {
		background-color: #000000;
	}

	/* Display Dropdown when clicked on Parent Lable */
	[id^=drop]:checked + ul {
		display: block;
	}

	/* Change menu item's width to 100% */
	nav ul li {
		display: block;
		width: 100%;
		}

	nav ul ul .toggle,
	nav ul ul a {
		padding: 0 40px;
	}

	nav ul ul ul a {
		padding: 0 80px;
	}

	nav a:hover,
 	nav ul ul ul a {
		background-color: #000000;
	}
  
	nav ul li ul li .toggle,
	nav ul ul a,
  nav ul ul ul a{
		padding:14px 20px;	
		color:#FFF;
		font-size:17px; 
	}
  
  
	nav ul li ul li .toggle,
	nav ul ul a {
		background-color: #212121; 
	}

	/* Hide Dropdowns by Default */
	nav ul ul {
		float: none;
		position:static;
		color: #ffffff;
		/* has to be the same number as the "line-height" of "nav a" */
	}
		
	/* Hide menus on hover */
	nav ul ul li:hover > ul,
	nav ul li:hover > ul {
		display: none;
	}
		
	/* Fisrt Tier Dropdown */
	nav ul ul li {
		display: block;
		width: 100%;
	}

	nav ul ul ul li {
		position: static;
		/* has to be the same number as the "width" of "nav ul ul li" */ 

	}

}

@media all and (max-width : 330px) {

	nav ul li {
		display:block;
		width: 94%;
	}

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
					<!-- First Tier Drop Down --> <label for="drop-2" class="toggle">View
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
								<li><a href="#">Loan Details By Loan ID</a></li>
								<li><a href="#">EMI Details By Loan ID</a></li>
								<li><a href="/user/getallusers">View All Users</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a href="/home/loanmanagementhomepage"">Sign Out</a></li>
				<li><a href="#">About</a></li>
			</ul>
		</nav>


		<p>A simple dropdown navigation menu made with CSS Only. Dropdowns
			are marked with a plus sign ( + )</p>
		<p>Resize the screen to see the look if the screen is smaller then
			768px</p>

	</div>

</body>
</html>