<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
</head>
<body>


<%@include file="navb.jsp" %>
<div class="container">
<div class="vc-columns">

</div>
<div class="data-container">
<div class="vc-columns">
<h3>Hello</h3>
<h3>Virat</h3>
<h3>Mobile:</h3>
<h3>Height: </h3>
<h3>Weight: </h3>
<h3>Age:</h3>
<h3>BMI:</h3>
</div>
<div class="image">
<img alt="no-image" src="profile.png" />
</div>
</div>

</div>


</body>

<style>
body{
  font-family: 'Open Sans', sans-serif;
  background: rgb(19,91,176);
  background: linear-gradient(90deg, rgba(19,91,176,1) 0%, rgba(33,141,175,1) 55%, rgba(0,212,255,1) 100%);
  margin: 0 auto 0 auto;  
  width:100%; 
  
}
.data-container{
	display: flex;
}
.container {
    background-color: #8093f1;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 0 0;
	color: black;
	position: relative;
    border-radius: 15px;
	border-style: solid;
	border-color: #8093f1;
	box-shadow: 15px 15px 15px rgba(0, 0, 0, 0.7);
    display: flex;
    max-width: 600px;
    margin-left: 450px;
    max-height: 300px;
    margin-top: 100px;
    padding: 50px;
    padding-top: 0px;
    font-style: bolder;
    
}
.vc-columns {
    padding: 10px;
    bacground-color: red;
}
.image{
margin-top: -40px;
width: 40%;
}
  
</style>


</html>