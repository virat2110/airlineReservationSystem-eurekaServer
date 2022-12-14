<%@page import="com.virat.demo.model.User"%>
<%@page import="com.virat.demo.model.Flight"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka&family=Lato&display=swap" rel="stylesheet">
    <title>AVA-ARS|Confirmation</title>
    
     <script type="text/javascript">
    window.history.forward();
    function noBack() {
        window.history.forward();
    }
</script>
    
    <%
    Flight f = (Flight) session.getAttribute("flightObj");
    User u = (User) session.getAttribute("userObj");
    int pnr = (Integer) session.getAttribute("pnr");
    int price = (Integer) session.getAttribute("disPrice");
    
    %>
     
    
   
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
  	<%@include file="navb.jsp" %>
	<div class="container">
		<div class="heading">
			<h1><span style="color: blue">Thank you, </span> your booking is complete</h1>
			<h3>Your PNR number is <span style="color:blue"><%=pnr %></span></h3>
		</div>
		<div class="description">
			<div class="details">
				<h1>Booking information: </h1>
				<h2>Name: <%=u.getName() %></h2>
				<h2>Source: <%=f.getSource() %></h2>
				<h2>Destination: <%=f.getDest() %></h2>
				<h2>Price: Rs.<%=price %></h2>
			</div>
			<div class="image">
				<img alt="plane" src="https://github.com/virat2110/BMI-CALCULATOR-WITH-NUTRION-CHART-AND-PROFILE-UPDATE/blob/main/2.png?raw=true" />
				<h2 style="margin-left: 30px">AVA Airlines</h2>
			</div>
		</div>
		
		<div class="buttons">
		<button class="btn"><a href="/users/searchflight"/>Home</button>
			
			<button class="btn2">Print</button>
		</div>
	</div>
	
	
	 <%
            session.setAttribute("disPrice", null);
            session.setAttribute("fliightId", null);
			session.setAttribute("userObj", null);
			session.setAttribute("flightObj", null);
			session.setAttribute("couponMsg", null);
            %>
		
</body>

<style>
body{
  	background-color: #5CDDFF;
	background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25'%3E%3Cdefs%3E%3ClinearGradient id='a' gradientUnits='userSpaceOnUse' x1='0' x2='0' y1='0' y2='100%25' gradientTransform='rotate(240)'%3E%3Cstop offset='0' stop-color='%235CDDFF'/%3E%3Cstop offset='1' stop-color='%2310727C'/%3E%3C/linearGradient%3E%3Cpattern patternUnits='userSpaceOnUse' id='b' width='540' height='450' x='0' y='0' viewBox='0 0 1080 900'%3E%3Cg fill-opacity='0.1'%3E%3Cpolygon fill='%23444' points='90 150 0 300 180 300'/%3E%3Cpolygon points='90 150 180 0 0 0'/%3E%3Cpolygon fill='%23AAA' points='270 150 360 0 180 0'/%3E%3Cpolygon fill='%23DDD' points='450 150 360 300 540 300'/%3E%3Cpolygon fill='%23999' points='450 150 540 0 360 0'/%3E%3Cpolygon points='630 150 540 300 720 300'/%3E%3Cpolygon fill='%23DDD' points='630 150 720 0 540 0'/%3E%3Cpolygon fill='%23444' points='810 150 720 300 900 300'/%3E%3Cpolygon fill='%23FFF' points='810 150 900 0 720 0'/%3E%3Cpolygon fill='%23DDD' points='990 150 900 300 1080 300'/%3E%3Cpolygon fill='%23444' points='990 150 1080 0 900 0'/%3E%3Cpolygon fill='%23DDD' points='90 450 0 600 180 600'/%3E%3Cpolygon points='90 450 180 300 0 300'/%3E%3Cpolygon fill='%23666' points='270 450 180 600 360 600'/%3E%3Cpolygon fill='%23AAA' points='270 450 360 300 180 300'/%3E%3Cpolygon fill='%23DDD' points='450 450 360 600 540 600'/%3E%3Cpolygon fill='%23999' points='450 450 540 300 360 300'/%3E%3Cpolygon fill='%23999' points='630 450 540 600 720 600'/%3E%3Cpolygon fill='%23FFF' points='630 450 720 300 540 300'/%3E%3Cpolygon points='810 450 720 600 900 600'/%3E%3Cpolygon fill='%23DDD' points='810 450 900 300 720 300'/%3E%3Cpolygon fill='%23AAA' points='990 450 900 600 1080 600'/%3E%3Cpolygon fill='%23444' points='990 450 1080 300 900 300'/%3E%3Cpolygon fill='%23222' points='90 750 0 900 180 900'/%3E%3Cpolygon points='270 750 180 900 360 900'/%3E%3Cpolygon fill='%23DDD' points='270 750 360 600 180 600'/%3E%3Cpolygon points='450 750 540 600 360 600'/%3E%3Cpolygon points='630 750 540 900 720 900'/%3E%3Cpolygon fill='%23444' points='630 750 720 600 540 600'/%3E%3Cpolygon fill='%23AAA' points='810 750 720 900 900 900'/%3E%3Cpolygon fill='%23666' points='810 750 900 600 720 600'/%3E%3Cpolygon fill='%23999' points='990 750 900 900 1080 900'/%3E%3Cpolygon fill='%23999' points='180 0 90 150 270 150'/%3E%3Cpolygon fill='%23444' points='360 0 270 150 450 150'/%3E%3Cpolygon fill='%23FFF' points='540 0 450 150 630 150'/%3E%3Cpolygon points='900 0 810 150 990 150'/%3E%3Cpolygon fill='%23222' points='0 300 -90 450 90 450'/%3E%3Cpolygon fill='%23FFF' points='0 300 90 150 -90 150'/%3E%3Cpolygon fill='%23FFF' points='180 300 90 450 270 450'/%3E%3Cpolygon fill='%23666' points='180 300 270 150 90 150'/%3E%3Cpolygon fill='%23222' points='360 300 270 450 450 450'/%3E%3Cpolygon fill='%23FFF' points='360 300 450 150 270 150'/%3E%3Cpolygon fill='%23444' points='540 300 450 450 630 450'/%3E%3Cpolygon fill='%23222' points='540 300 630 150 450 150'/%3E%3Cpolygon fill='%23AAA' points='720 300 630 450 810 450'/%3E%3Cpolygon fill='%23666' points='720 300 810 150 630 150'/%3E%3Cpolygon fill='%23FFF' points='900 300 810 450 990 450'/%3E%3Cpolygon fill='%23999' points='900 300 990 150 810 150'/%3E%3Cpolygon points='0 600 -90 750 90 750'/%3E%3Cpolygon fill='%23666' points='0 600 90 450 -90 450'/%3E%3Cpolygon fill='%23AAA' points='180 600 90 750 270 750'/%3E%3Cpolygon fill='%23444' points='180 600 270 450 90 450'/%3E%3Cpolygon fill='%23444' points='360 600 270 750 450 750'/%3E%3Cpolygon fill='%23999' points='360 600 450 450 270 450'/%3E%3Cpolygon fill='%23666' points='540 600 630 450 450 450'/%3E%3Cpolygon fill='%23222' points='720 600 630 750 810 750'/%3E%3Cpolygon fill='%23FFF' points='900 600 810 750 990 750'/%3E%3Cpolygon fill='%23222' points='900 600 990 450 810 450'/%3E%3Cpolygon fill='%23DDD' points='0 900 90 750 -90 750'/%3E%3Cpolygon fill='%23444' points='180 900 270 750 90 750'/%3E%3Cpolygon fill='%23FFF' points='360 900 450 750 270 750'/%3E%3Cpolygon fill='%23AAA' points='540 900 630 750 450 750'/%3E%3Cpolygon fill='%23FFF' points='720 900 810 750 630 750'/%3E%3Cpolygon fill='%23222' points='900 900 990 750 810 750'/%3E%3Cpolygon fill='%23222' points='1080 300 990 450 1170 450'/%3E%3Cpolygon fill='%23FFF' points='1080 300 1170 150 990 150'/%3E%3Cpolygon points='1080 600 990 750 1170 750'/%3E%3Cpolygon fill='%23666' points='1080 600 1170 450 990 450'/%3E%3Cpolygon fill='%23DDD' points='1080 900 1170 750 990 750'/%3E%3C/g%3E%3C/pattern%3E%3C/defs%3E%3Crect x='0' y='0' fill='url(%23a)' width='100%25' height='100%25'/%3E%3Crect x='0' y='0' fill='url(%23b)' width='100%25' height='100%25'/%3E%3C/svg%3E");
	background-attachment: fixed;
	background-size: cover;
  	margin: 0 auto 0 auto;  
  	width:100%; 
  	text-align:center;
  	margin: 0px 0px 20px 0px; 
  	 font-family: 'Fredoka', sans-serif;
}
.container{
	background-color: aliceblue;
	width: 80vw;
	height: 75vh;
	margin-left: 150px;
	margin-top: 50px;
	border-radius: 20px;
	border: 2px solid black;
}
.heading{
	padding: 10px;
}

.description{
	background-color: #d8def3;
	width: 50vw;
	height: 40vh;
	margin-left: 220px;
	display: flex;
	border: 2px solid black;
}

.details{
	float: left;
	width: 60%;
	text-align: left;
	padding-left: 30px;
}

.image{
	float: right;
	width: 40%;
	padding: 40px;
	margin-right: 30px;
	margin-top: 20px;
}

.image img{
	width: 120%;
}

.buttons{
	padding: 20px;
}

.btn{
  background:#2ecc71;
  width:125px;
  padding-top:5px;
  padding-bottom:5px;
  margin-right: 10px;
  color:white;
  border-radius:4px;
  border: #27ae60 1px solid;
  font-weight:800;
  font-size:0.8em;
}
.btn:hover{
background:green; 
cursor:pointer;
}
.btn2{
  background:#3498db;
  width:125px;  
  padding-top:5px;
  padding-bottom:5px;
  color:white;
  margin-left: 10px;
  border-radius:4px;
  border: #2980b9 1px solid;
  font-weight:800;
  font-size:0.8em;
}
.btn2:hover{ 
background:green; 
cursor:pointer;
}
</style>
</html>