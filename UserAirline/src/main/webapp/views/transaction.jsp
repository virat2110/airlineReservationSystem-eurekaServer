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
    <title>AVA-ARS|Payment</title>
    
    
    <%
    Flight f = (Flight) session.getAttribute("flightObj");
    User u = (User) session.getAttribute("userObj");
    %>
     <script type="text/javascript">
    window.history.forward();
    function noBack() {
        window.history.forward();
    }
</script>
   
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
  <%@include file="navb.jsp" %>
		
		<div class="cont">
        <div class="box">
                
        <div class="column">

        <h3>Flight name: <%=f.getName() %>	</h3>
        <h3>Flight id: <%=f.getFlightId() %>	</h3>
        <h3>Source: <%=f.getSource() %>	</h3>
        <h3>Dest: <%=f.getDest() %>	</h3>
        
        </div>
        
        <div class="column">
        <h3>Flight Departure: <%=f.getDeparture() %>	</h3>
        <h3>Flight Arrival: <%=f.getArrival() %>	</h3>
         <h3>Name: <%=u.getName() %>	</h3>
      <h3>Mobile: <%=u.getMobile() %>	</h3>
        </div>
       
          
          
        </div>
         <div class="image">
                <div class="box1">
                <div class="column1">
                <h2 style="color: blue;">Confirmation page </h2>
       <h3>Base Amount: </h3>
       <h3  style="color:red;">₹ <%=f.getPrice() %></h3>
       <br/>
       <br/>
        <form action="/users/ApplyCoupon" method="get">
         <h5 style="text-align: center; color:green;margin-top:0px;margin-bottom:10px; font-size: 20px;">${couponMsg }</h5>
         <%if(session.getAttribute("disPrice") == null) { %>
        <input type="text" name="t1"  class="email" placeholder ="Have Coupon!!"/> <br/>
        <input type = "submit" value="Apply" id="btn2"/>
        <%} %>
         
        
        </form>
       <br/>
       <br/>
       <br/>
       <br/>
       <br/>
       <br/>
       <a href="/users/searchflight" style="color:red; font-size: 16px; font-weight: bold; margin-bottom: 2px; ">
      
       Search again for flight!!!!</a></br>
       
       
        <a id="btn3" href="/users/bookTicket">Confirm</a>  
        <a id="btn4" href="/logout">Cancel</a>
       
        
       
                </div>
            </div>
            </div>
            </div>
           
</body>

<style>
body{
  background-color: #5CDDFF;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25'%3E%3Cdefs%3E%3ClinearGradient id='a' gradientUnits='userSpaceOnUse' x1='0' x2='0' y1='0' y2='100%25' gradientTransform='rotate(240)'%3E%3Cstop offset='0' stop-color='%235CDDFF'/%3E%3Cstop offset='1' stop-color='%2310727C'/%3E%3C/linearGradient%3E%3Cpattern patternUnits='userSpaceOnUse' id='b' width='540' height='450' x='0' y='0' viewBox='0 0 1080 900'%3E%3Cg fill-opacity='0.1'%3E%3Cpolygon fill='%23444' points='90 150 0 300 180 300'/%3E%3Cpolygon points='90 150 180 0 0 0'/%3E%3Cpolygon fill='%23AAA' points='270 150 360 0 180 0'/%3E%3Cpolygon fill='%23DDD' points='450 150 360 300 540 300'/%3E%3Cpolygon fill='%23999' points='450 150 540 0 360 0'/%3E%3Cpolygon points='630 150 540 300 720 300'/%3E%3Cpolygon fill='%23DDD' points='630 150 720 0 540 0'/%3E%3Cpolygon fill='%23444' points='810 150 720 300 900 300'/%3E%3Cpolygon fill='%23FFF' points='810 150 900 0 720 0'/%3E%3Cpolygon fill='%23DDD' points='990 150 900 300 1080 300'/%3E%3Cpolygon fill='%23444' points='990 150 1080 0 900 0'/%3E%3Cpolygon fill='%23DDD' points='90 450 0 600 180 600'/%3E%3Cpolygon points='90 450 180 300 0 300'/%3E%3Cpolygon fill='%23666' points='270 450 180 600 360 600'/%3E%3Cpolygon fill='%23AAA' points='270 450 360 300 180 300'/%3E%3Cpolygon fill='%23DDD' points='450 450 360 600 540 600'/%3E%3Cpolygon fill='%23999' points='450 450 540 300 360 300'/%3E%3Cpolygon fill='%23999' points='630 450 540 600 720 600'/%3E%3Cpolygon fill='%23FFF' points='630 450 720 300 540 300'/%3E%3Cpolygon points='810 450 720 600 900 600'/%3E%3Cpolygon fill='%23DDD' points='810 450 900 300 720 300'/%3E%3Cpolygon fill='%23AAA' points='990 450 900 600 1080 600'/%3E%3Cpolygon fill='%23444' points='990 450 1080 300 900 300'/%3E%3Cpolygon fill='%23222' points='90 750 0 900 180 900'/%3E%3Cpolygon points='270 750 180 900 360 900'/%3E%3Cpolygon fill='%23DDD' points='270 750 360 600 180 600'/%3E%3Cpolygon points='450 750 540 600 360 600'/%3E%3Cpolygon points='630 750 540 900 720 900'/%3E%3Cpolygon fill='%23444' points='630 750 720 600 540 600'/%3E%3Cpolygon fill='%23AAA' points='810 750 720 900 900 900'/%3E%3Cpolygon fill='%23666' points='810 750 900 600 720 600'/%3E%3Cpolygon fill='%23999' points='990 750 900 900 1080 900'/%3E%3Cpolygon fill='%23999' points='180 0 90 150 270 150'/%3E%3Cpolygon fill='%23444' points='360 0 270 150 450 150'/%3E%3Cpolygon fill='%23FFF' points='540 0 450 150 630 150'/%3E%3Cpolygon points='900 0 810 150 990 150'/%3E%3Cpolygon fill='%23222' points='0 300 -90 450 90 450'/%3E%3Cpolygon fill='%23FFF' points='0 300 90 150 -90 150'/%3E%3Cpolygon fill='%23FFF' points='180 300 90 450 270 450'/%3E%3Cpolygon fill='%23666' points='180 300 270 150 90 150'/%3E%3Cpolygon fill='%23222' points='360 300 270 450 450 450'/%3E%3Cpolygon fill='%23FFF' points='360 300 450 150 270 150'/%3E%3Cpolygon fill='%23444' points='540 300 450 450 630 450'/%3E%3Cpolygon fill='%23222' points='540 300 630 150 450 150'/%3E%3Cpolygon fill='%23AAA' points='720 300 630 450 810 450'/%3E%3Cpolygon fill='%23666' points='720 300 810 150 630 150'/%3E%3Cpolygon fill='%23FFF' points='900 300 810 450 990 450'/%3E%3Cpolygon fill='%23999' points='900 300 990 150 810 150'/%3E%3Cpolygon points='0 600 -90 750 90 750'/%3E%3Cpolygon fill='%23666' points='0 600 90 450 -90 450'/%3E%3Cpolygon fill='%23AAA' points='180 600 90 750 270 750'/%3E%3Cpolygon fill='%23444' points='180 600 270 450 90 450'/%3E%3Cpolygon fill='%23444' points='360 600 270 750 450 750'/%3E%3Cpolygon fill='%23999' points='360 600 450 450 270 450'/%3E%3Cpolygon fill='%23666' points='540 600 630 450 450 450'/%3E%3Cpolygon fill='%23222' points='720 600 630 750 810 750'/%3E%3Cpolygon fill='%23FFF' points='900 600 810 750 990 750'/%3E%3Cpolygon fill='%23222' points='900 600 990 450 810 450'/%3E%3Cpolygon fill='%23DDD' points='0 900 90 750 -90 750'/%3E%3Cpolygon fill='%23444' points='180 900 270 750 90 750'/%3E%3Cpolygon fill='%23FFF' points='360 900 450 750 270 750'/%3E%3Cpolygon fill='%23AAA' points='540 900 630 750 450 750'/%3E%3Cpolygon fill='%23FFF' points='720 900 810 750 630 750'/%3E%3Cpolygon fill='%23222' points='900 900 990 750 810 750'/%3E%3Cpolygon fill='%23222' points='1080 300 990 450 1170 450'/%3E%3Cpolygon fill='%23FFF' points='1080 300 1170 150 990 150'/%3E%3Cpolygon points='1080 600 990 750 1170 750'/%3E%3Cpolygon fill='%23666' points='1080 600 1170 450 990 450'/%3E%3Cpolygon fill='%23DDD' points='1080 900 1170 750 990 750'/%3E%3C/g%3E%3C/pattern%3E%3C/defs%3E%3Crect x='0' y='0' fill='url(%23a)' width='100%25' height='100%25'/%3E%3Crect x='0' y='0' fill='url(%23b)' width='100%25' height='100%25'/%3E%3C/svg%3E");
background-attachment: fixed;
background-size: cover;
  width:100%; 
  text-align:center;
  margin: 0px 0px 20px 0px;
  font-family: Sans-serif;
}
.cont{
display: flex;
margin-left:100px;
}
.image {
    margin-top: 10px;
    margin-left: 180px;
    width : 100px;
    height: 100px;  
}
p{
  font-size:12px;
  text-decoration: none;
  color:#ffffff;
}
h1{
  font-size:1.5em;
  color:#525252;
}
.box{
  background:white;
  width:500px;
  border-radius:15px;
  margin-top: 170px;
  margin-left: 10px;
  padding:20px 10px 10px 10px;
  border: #3A5743 2px solid; 
  display : flex;
  float : left;
}
.box1{
  background:white;
  width:450px;
  border-radius:15px;
  margin-top:50px;
  margin-left: 10px;
  padding:20px 0px 0px 20px;
  border: #3A5743 2px solid; 
  display : flex;
  float : left;
  height:470px;
}


.column {
  flex: 50%;
  text-align: left;
}

.column1 {
  flex: 50%;
  text-align: center;
}
.email{
  background:#ecf0f1;
  border: #ccc 1px solid;
  border-bottom: #ccc 2px solid;
  padding: 8px;
  width:250px;
  color:#AAAAAA;
  margin-top:10px;
  font-size:1em;
  border-radius:4px;

}
.password{
  border-radius:4px;
  background:#ecf0f1;
  border: #ccc 1px solid;
  padding: 8px;
  width:250px;
  font-size:1em;
}
#btn2{
  float:left;
  background:#3498db;
  width:125px;  padding-top:5px;
  padding-bottom:5px;
  color:white;
  border-radius:4px;
  border: #2980b9 1px solid;
margin-left: 150px;
  margin-top:20px;
  margin-bottom:20px;
  font-weight:800;
  font-size:0.8em;
}
#btn2:hover{ 
background:blue; 
cursor:pointer;
}

#btn3{
display:inline;
float: left;
  background:green;
  width:125px;  padding-top:5px;
  padding-bottom:5px;
  color:white;
  border-radius:4px;
  border: #2980b9 1px solid;
margin-left: 80px;
  margin-top:20px;
  margin-bottom:20px;
  font-weight:800;
  font-size:0.8em;
}
#btn3:hover{ 
background:#6be06b; 
cursor:pointer;
}
#btn4{
display:inline;
float: right;
  background: #c30e0e;
  width:125px;  padding-top:5px;
  padding-bottom:5px;
  color:white;
  border-radius:4px;
  border: #2980b9 1px solid;
margin-left: -60px;
  margin-top:20px;
  margin-bottom:20px;
  font-weight:800;
  font-size:0.8em;
  margin-right: 80px;

}
#btn4:hover{ 
background:#ed4a4a; 
cursor:pointer;
}
</style>
</html>