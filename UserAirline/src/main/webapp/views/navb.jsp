<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

	<script src="https://kit.fontawesome.com/21e0291c53.js" crossorigin="anonymous"></script>



    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title >AVA-ARS</title>

</head>


<body>
            <div class="navbar">
             <div class="header">
            <div class="title">
            <a href="#">AVA ARS</a>
           </div>
                <ul>
                    <li><a class="text1" href="/users/searchflight">Search flight  <i class="fa-solid fa-magnifying-glass"></i></a></li>
                    <li><a class="text1" href="#">Profile</a></li>
                     <li>
                     
                     <div class="dropdown">
                      <button class="dropbtn">${ uUser }
                        <i class="fa fa-caret-down"></i>
                      </button>
                      <div class="dropdown-content">
                        <a href="#">View profile</a>
                    <a href="#">Update</a>
                        <a href="#">History</a>
                        <a href="/users/logout">Logout</a>
                      </div>
                    </div>
                     
                     </li>
                   
       
                </ul>
            </div>
            </div>
           
       
</body>


<style>
body {
font-family: 'Fredoka', sans-serif;
}
.navbar{
	background: rgb(21,110,124);
	background: linear-gradient(90deg, rgba(21,110,124,1) 13%, rgba(16,131,149,1) 51%, rgba(84,190,207,1) 89%);
	height: 12vh;
}

.navbar ul{
    display: flex;
    margin-right: 40px;
    cursor: pointer;
}
.navbar li:hover{
    color: black;
}
.navbar li {
    padding: 10px 30px 10px 20px;
    list-style: none;
    color: white;
    
}
a {
    text-decoration: none;
    color:white;
    
    
}
a:hover{
color: black;
}
.header {
    display: flex;
    justify-content: space-between;
    font-size: 20px;
    color: #ffff;
}
.title {
    padding: 30px;
     font-size: 22px;
}
.dropdown {
	float: left;
	overflow: hidden;
	margin-left: 15px;
	margin-right: 15px;
	margin-top: 3px;
	display: block;

	
	
  }
  
  .dropdown .dropbtn {
	font-size: 22px;
	border: none;
	outline: none;
	background-color: inherit;
	margin: 0; 
    padding: 10px 0;
    color: rgba(255, 255, 255, 0.911);
    text-transform: capitalize;
    transition: all 0.5s ease;
    margin-top: -50px;
  }
  
  .navbar a:hover, .dropdown:hover .dropbtn {
	color: #000000;
  }

  .dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	z-index: 1;
  }

  .dropdown-content a {
	float: none;
	color: black;
	padding: 8px 8px;
	text-decoration: none;
	display: block;
	text-align: left;
	font-size: large;
  }

  .dropdown-content a:hover {
	background-color: rgb(17, 169, 207);
  }

  .dropdown:hover .dropdown-content {
	display: block;
  }
</style>



</html>