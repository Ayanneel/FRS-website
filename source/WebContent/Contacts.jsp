<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" type="image/png" href="https://raw.githubusercontent.com/thehalfwedbride/Flight-WeBOP/master/favicon.png"/>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<title>WeBOP Contacts</title>

<style>
/*HEADER*/
#navbar {
	overflow: hidden;
	background-color: #003366;
}

#navbar a {
	float: right;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

#navbar a:hover {
	background-color: #ddd;
	color: black;
}

#navbar a.active {
	background-color: #4CAF50;
	color: white;
}

.content {
	padding: 16px;
}

.sticky {
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 10;
}

.sticky+.content {
	padding-top: 60px;
}

.nav {
	font-size: 20px;
}

.tab-pane {
	border-left: 1px solid #ddd;
	border-right: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	border-radius: 0px 0px 15px 15px;
	padding: 10px;
	background-color:#fff;
}

.nav-tabs {
	margin-bottom: 0;
	background-color:#6b1c99;
	border-top-left-radius:15px;
	border-top-right-radius:15px;
}

/* For sidenav */
.sidenav {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 10;
	top: 0;
	left: 0;
	background-color: #003366;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #fff;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}


/*CONTENT*/
body{
margin-top: 5%;
background-image: url("https://cdn.pixabay.com/photo/2012/06/08/06/19/sky-49520_960_720.jpg");
background-repeat: no-repeat;
background-size:cover;
}

.contdet{
	width: 80%;
	margin-left: 10%;
	margin-right: 10%;
	float: center;
	position: relative;
	
}
.dets{
	width: 48%;
	float: left;
	background-color: rgba(100, 150, 200, 0.7);
	color:white;
	font-family: 'Nanum Gothic', sans-serif;
}
.dets a:link{
	color:yellow;
}
.info{
	margin-left: 10%;
	margin-right : 10%;
}
.maps{
	border: 3px solid gray;
	width: 48%;
	float: right;
}

.redfaq{
	border: 3px solid #ccc;
	width: 60%;
	margin-left: 20%;
	margin-top: 44%;
	float: center;
	position: absolute;
	background-color:#92c0fa;
	
}
.redtxt{
	margin-right: 10%;
	float: right;
}
.quest{
	margin-left: 10%;
	float: left;
}
#gans{
	padding: 8px 14px 8px 14px;
	background-color: #50f;
	color: white;
	text-decoration: none;
	border-radius: 10px;
	margin-left: 25%;
}

/*FOOTER*/

.footimg{
	width: 100%;
	position: absolute;
	text-align:left;
	margin-top: 95%;
}

.footertext {
  color: #000;
}
.footlinks{
	color:#777;
	text-decoration:none;
	font-size: 15px;
}
.footlinks:hover{
	color: #999;
	text-decoration:none;
}
.footheader{
	font-size: 22px;
	color:#666;
}
.page{
width:90%;
text-align:left;
margin-left:150px; 
margin-right:70px; 
margin-top:69%;
position:absolute;
float:center;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<script>
	function openNav() {
		console.log("check")
		document.getElementById("mySidenav").style.width = "250px";
	}
	function closeNav() {
		document.getElementById("mySidenav").style.width = "0";
	}
</script>
</head>
<body>

<!-- HEADER -->
<div id="header" class="header">
		<div id="navbar" class="sticky">
			<a data-toggle="modal" data-target="#exampleModal">Login</a> <a href="javascript:void(0)">Contact</a>
			<a href="javascript:void(0)">FAQ's</a> <a href="javascript:void(0)">Book</a>
			<span style="font-size: 30px; cursor: pointer; color: #fff;" onclick="openNav()">&#9992;</span>
			<img src="https://raw.githubusercontent.com/thehalfwedbride/Flight-WeBOP/master/PicsArt_08-18-10.22.33.png" height="40px" width="40px">
		</div>

		<div id="mySidenav" class="sidenav">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<a href="#" data-toggle="modal" data-target="#exampleModal">Login</a>
		</div>
	</div>


<!-- CONTENT -->
<div class="contacts">
	<div class="contdet">
		<div class="dets">
			<div class="info">
				<h2>Get In Touch</h2>
				<h4>Registered Office</h4>
				<p>CIN : L62100DL2004PLC129768<br>
				Central Wing, Ground Floor, Thapar House, <br>124, Janpath, New Delhi &#8208; 110001, India<br>
				Fax : +91 11-43513200<br>
				<p style="font-size:small;"><i>For comments, concerning Civil Aviation Requirement, Section -3, please contact- Air Transport, Series M, Part IV:  <br><a href="#">Click Here</a> to reach out to Nodal Officer, Minizes Thomas <br><a href="#">Click Here</a> to reach out to Appellate authority, Priyaah Sundaraam</p><br><br>
				</i></p>
				<h4>Corporate Office</h4>
				<p>Level 1, Tower C, Global Business Park, <br>Mehrauli-Gurgaon Road, Gurgaon &#8208; 122 002, <br>Haryana, India.<br>
				Tel : +91 (0)124 435 2500<br>
				Fax : +91 (0)124 406 8536<br><br>
				<p style="font-size:small;"><i><a href="#">Click Here</a> to share your feedback/compliments</i></p>
				</p>
			</div>
		</div>
		<div class="maps">
			<a href="https://www.google.com/maps/place/Wipro+EC5+Tower+S2/@12.8369428,77.6521879,17z/data=!3m1!4b1!4m5!3m4!1s0x3bae6c8031fac9a5:0xa0ad2367352d97ab!8m2!3d12.8369376!4d77.6543766">
				<img src="https://raw.githubusercontent.com/thehalfwedbride/Flight-WeBOP/master/officeloc.PNG" width="100%" height="100%" alt"WeBOP Location">
			</a>
		</div>
	</div>
	<div class="redfaq">
		<div class="redtxt">
			<h1>Still Confused?</h1>
			<h3>View some of the Frequently Asked Questions...</h3>
			<p>We have the answers to all you queries</p><br>
			<a href="FAQ.jsp" id="gans">Get Answers</a>
		</div>
		<div class="quest">
			<img src="https://raw.githubusercontent.com/thehalfwedbride/Flight-WeBOP/master/icons/thinking.png" width="200px" height="200px">
		</div>
	</div>
</div>

<!-- FOOTER -->
<footer class="page">
	<table class="footer" border="0" width="100%">
	<tr>
		<th class="footheader"> Get to Know Us </th>
		<th class="footheader"> Quick Links </th>
		<th class="footheader"> Social </th>
	</tr>
	<tr >
		<td> <a href="#" class="footlinks">About Us</a> </td>
		<td> <a href="#" class="footlinks">Contact Us</a> </td>
		<td> <a href="#"><img src="https://raw.githubusercontent.com/thehalfwedbride/Flight-WeBOP/master/icons/facebook.png" height="35px" width="35px"></a> </td>
	</tr>
	<tr>
		<td> <a href="#" class="footlinks">Destinations</a> </td>
		<td> <a href="#" class="footlinks">Feedback</a> </td>
		<td> <a href="#"><img src="https://raw.githubusercontent.com/thehalfwedbride/Flight-WeBOP/master/icons/instagram.png" height="35px" width="35px"></a> </td>
	</tr>
	<tr>
		<td> <a href="#" class="footlinks">Careers</a> </td>
		<td> <a href="#" class="footlinks">Advertise With Us</a> </td>
		<td> <a href="#"><img src="https://raw.githubusercontent.com/thehalfwedbride/Flight-WeBOP/master/icons/twitter.png" height="35px" width="35px"></a> </td>
	</tr>
	<tr>
		<td> <a href="#" class="footlinks">Our Awards</a> </td>
		<td> <a href="#" class="footlinks">Terms And Conditions</a> </td>
		<th class="footheader"> Download</th>
	</tr>
	<tr>
		<td></td>
		<td></td>
		<td> <a href="#"><img src="https://raw.githubusercontent.com/thehalfwedbride/Flight-WeBOP/master/icons/playstore.png" height="90px" width="150px"></a> </td>
	</tr>
	</table>
 <p style="font-size:12px; color: #333;">&copy; Copyright 2019 WeBOP. All rights reserved.</p>
</footer>
<div class="footimg">
		<img src="https://raw.githubusercontent.com/thehalfwedbride/Flight-WeBOP/master/footerflight2.jpg" width="99%" height="200px">
	</div>
</body>
</html>
