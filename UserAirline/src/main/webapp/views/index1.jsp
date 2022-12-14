<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AVA ARS</title>
    <link rel="stylesheet" href="index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/21e0291c53.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container">
        <div class="navbar">
            <div class="title">
                <div class="name">AVA ARS</div>
                
                <h4>Discover</h4>
            </div>
            <div class="buttons">
                <a href="/users/login" class="bn3637">Login</a>
                <a href="/users/delayedFlight" class="bn3637">Flight status</a>
                <a  class="bn59"  href="/users/register"> Register</a>
            </div>
        </div>

        <div class="description">
            <h1>B O O K &nbsp Y O U R &nbsp N E X T &nbsp F L I G H T &nbsp T I C K E T S</h1>
            <h3>Buy flight tickets across India. Fast, simple booking.</h3>
            <div class="inputs">
            <form action="FlightsearchHome" method="post">
                <input class="left" name= "source" type="text" placeholder="Where are you travelling from?" />
                <input class="right" name="dest" type="text" placeholder="Where are you going?" />
                <input class="search" type="submit"><i style="color: aliceblue;" class="fa-solid fa-magnifying-glass"></i>
                </form>
            </div>
        </div>

        <div class="image">
            <img src="https://github.com/virat2110/BMI-CALCULATOR-WITH-NUTRION-CHART-AND-PROFILE-UPDATE/blob/main/plane1.png?raw=true" alt="plane" />
        </div>
    </div>
</body>



<style>
* {
  margin: 0;
  padding: 0;
  font-family: "Poppins", sans-serif;
}

.container {
  width: 100vw;
  height: 100vh;
  z-index: -1;
background:  #5dcce6;
}

.image img {
 	width: 100vw;;
 	height: 550px;
}

.navbar {
  display: flex;
  padding: 20px;
  justify-content: space-between;
  align-items: center;
}

.title {
  display: flex;
  align-items: center;
  padding-left: 50px;
}

.name {
  color: rgb(129, 21, 138);
  font-size: 24px;
  font-weight: bolder;
  padding: 10px;
}

.title h4 {
  padding: 10px;
}

.buttons {
  display: flex;
  align-items: center;
  justify-content: center;
  padding-right: 50px;
}

.bn59 {
  background-color: #5dcce6;
  border: 1px solid #803e77;
  font-weight: 600;
  position: relative;
  outline: none;
  border-radius: 50px;
  display: flex;
  justify-content: center;
  align-items: center;
  cursor: pointer;
  height: 45px;
  width: 130px;
  opacity: 1;
  color: #803e77;
}

.bn3637 {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 0.7rem 2rem;
  font-weight: 700;
  font-size: 18px;
  text-align: center;
  text-decoration: none;
  color: black;
  backface-visibility: hidden;
  border: 0.3rem solid transparent;
  border-radius: 3rem;
  height: 45px;
}

.description {
  position: absolute;
  width: 100vw;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding-bottom: 100px;
  z-index: 1;
}

.description h1 {
  margin-top: 40px;
  font-size: 30px;
  color: rgb(49, 49, 133);
  padding: 10px;
  font-weight: bolder;
}

.description h3 {
  color: black;
  font-size: 20px;
}

.image {
  position: fixed;
  bottom: 0;
  z-index: 0;
}


.inputs {
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top: 30px;
}

.inputs input {
  padding: 10px;
  border: none;
  width: 220px;
}

.left {
  border-radius: 20px 0px 0px 20px;
  margin-right: 5px;
}

.right {
  border-radius: 0px 20px 20px 0px;
}

.search {
  background-color: #803e77;
  padding: 7.5px;
  border-radius: 20px;
  width: 30px;
  text-align: center;
  margin-left: -40px;
}


</style>
</html>