<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.virat.demo.model.SourceDest"%>
<%@page import="java.util.List"%>
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
    <title>AVA-ARS | Search</title>
     <script type="text/javascript">
    window.history.forward();
    function noBack() {
        window.history.forward();
    }
</script>
    
    
    <%
    List<String> ls = (List<String>) request.getAttribute("ls");
    List<String> ld = (List<String>) request.getAttribute("ld");
    List<String> latest = (List<String>) request.getAttribute("latest");
    
    %>
    
    
    
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">



	<%@include file="navb.jsp" %>
	<div class="cont">
	<div class="left-cont">
	
	<div class="box">

    <form action="searchFlight" method="post">
        <h3>Search your destination</h3>
       
         <h5 style="text-align: center; color:red;margin-top:10px;margin-bottom:10px;">${msga}</h5>
        <%
        session.setAttribute("msga", "");
        %>
	     <select class="classic"name="t1" required>
		  <option value="">Source</option>
		  <% for(String sd: ls)  { %>
		  <option value=<%=sd %> ><%=sd %></option>
		   <% } %>
		</select>
		
		
		<select class="classic" name ="t2" required>
		  <option value="">Destination</option>
		   <% for(String sd: ld)  { %>
		  <option value=<%=sd %> ><%=sd%></option>
		   <% } %>
		</select>
       <input type = "submit" value="Search" id="btn2"/>
       
       </form>
       
        
  		</div>
  		<div class="box-1">
        	<div style="display: flex">
        		<h3>Recent: <%=latest.get(0) %> </h3>
        		<h3><i class="fas fa-long-arrow-right"></i></h3>
        		<h3>  <%=latest.get(1) %></h3>
        	</div>
        	 <a id="btn3" href="/users/searchLast/<%=latest.get(0) %>/<%=latest.get(1) %>">Search</a> 
        </div>
	
	
	</div>
        
          
        
        <div class="image">
                <img src="https://github.com/virat2110/BMI-CALCULATOR-WITH-NUTRION-CHART-AND-PROFILE-UPDATE/blob/main/2.png?raw=true" alt="no image" height = "300"/>
            </div>
     </div>
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
select {

  /* styling */
  background-color: white;
  border: thin solid blue;
  border-radius: 4px;
  display: inline-block;
  line-height: 1.5em;
  padding: 0.5em 3.5em 0.5em 1em;

  /* reset */

  margin: 0;      
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-appearance: none;
  -moz-appearance: none;
}


/* arrows */

select.classic {
  background-image:
    linear-gradient(45deg, transparent 50%, blue 50%),
    linear-gradient(135deg, blue 50%, transparent 50%),
    linear-gradient(to right, skyblue, skyblue);
  background-position:
    calc(100% - 20px) calc(1em + 2px),
    calc(100% - 15px) calc(1em + 2px),
    100% 0;
  background-size:
    5px 5px,
    5px 5px,
    2.5em 2.5em;
  background-repeat: no-repeat;
}


.left-cont{
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-evenly;
	height: 80vh;
}

.cont{
display: flex;
margin-left:250px;
}
.image {
    margin-top: 120px;
    margin-left: 180px;
    width : 100px;
    height: 100px;
   
}
p{
  font-size:12px;
  color:#ffffff;
}
h1{
  font-size:1.5em;
  color:#525252;
}

.box{
  background:white;
  width:350px;
  border-radius:6px;
  margin-left: 50px;
  padding:10px 0px 0px 0px;
  border: #3A5743 2px solid; 
  box-shadow: 8px 8px #63d2ee;
}

.box-1{
  background:white;
  width:400px;
  border-radius:6px;
  margin-left: 50px;
  padding:0px 0px 0px 0px;
  border: #3A5743 2px solid; 
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
   box-shadow: 8px 8px #63d2ee;
}
.box-1 h1 {
}

#btn2{
  float:left;
  background: #3498db;
  width:125px;  padding-top:5px;
  padding-bottom:5px;
  color:white;
  border-radius:4px;
  border: #2980b9 1px solid;  
  margin-top:20px;
  margin-bottom:20px;
  margin-left:100px;
  font-weight:800;
  font-size:0.8em;
}
#btn2:hover{ 
background:blue; 
cursor:pointer;
color: black;
}


#btn3{
  float:left;
  background:#3498db;
  width:125px;  padding-top:5px;
  padding-bottom:5px;
  color:white;
  border-radius:4px;
  border: #2980b9 1px solid;  
  margin-top:10px;
  margin-bottom:10px;
  font-weight:800;
  font-size:0.8em;
}
#btn3:hover{ 
background:blue; 
cursor:pointer;
color: black;
}
</style>
</html>