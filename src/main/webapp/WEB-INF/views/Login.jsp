<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
  @import url(https://fonts.googleapis.com/css?family=Exo:100,200,400);
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

body{
	margin: 0;
	padding: 0;
	background: #fff;

	color: #fff;
	font-family: Arial;
	font-size: 12px;
}
p {
  display: inline-block;
  width: 200px;
  margin: 10 40px;
  font-size: 1.2rem;
  color: rgba(255, 255, 255, 0.788);
  /*background-color: yellow;*/
}

.body{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background-image: url(https://wallpaperplay.com/walls/full/4/7/5/153445.jpg);
	background-size: cover;
	
    z-index: 0;
    

-webkit-animation: hue-rotate 6s infinite;
          animation: hue-rotate 6s infinite;
 
  background-size: cover;
  -webkit-filter: grayscale(30%);
  z-index: -1;




}

.grad{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); /* Chrome,Safari4+ */
	z-index: 1;
    opacity: 0.7;
    







    
}

.header{
	position: absolute;
	top: calc(50% - 35px);
	left: calc(25% - 255px);
	z-index: 2;
}

.header div{
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
}

.header div span{
 
	color: #ff9100 !important;
}

.login{
    position: absolute;
   
	top: calc(50% - 75px);
	left: calc(25% - 50px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
}

.login input[type=text]{

	width: 250px;
	height: 30px;
	background: rgba(252, 252, 252, 0.3);
	/* background: transparent; */
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 6.5px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=password]{
	width: 250px;
	height: 30px;
	background: rgba(252, 252, 252, 0.3);
	/* background: transparent; */
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 6.5px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.login input[type=submit]{
	width: 200px;
    height: 35px;
    margin-left: 25px;
	background: rgba(255, 255, 255, 0.753);
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 20px;
	color: #a18d6c;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
    padding: 6px;
    
	margin-top: 10px;
}

.login input[type=submit]:hover{
	opacity: 0.4;
}

.login input[type=submit]:active{
	opacity: 0.6;
}

.login input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=submit]:focus{
	outline: none;
}

::-webkit-input-placeholder{
   color: rgba(255,255,255,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}




@-webkit-keyframes hue-rotate {
  from {
    -webkit-filter: grayscale(30%) hue-rotate(0deg);
  }
  to {
    -webkit-filter: grayscale(30%) hue-rotate(360deg);
  }
}

@keyframes hue-rotate {
  from {
    -webkit-filter: grayscale(30%) hue-rotate(0deg);
  }
  to {
    -webkit-filter: grayscale(30%) hue-rotate(360deg);
  }
}


    </style>
    </head>
</head>
<body>
 <div class="body"></div>
            <div class="grad"></div>
            <div class="header">
                
                <div>Pixo<span><strong>Gram</strong></span></div>
            </div>
            <br>
            <div class="login">
                <form action="LoginUser" method="POST">
                    <input type="text" placeholder="email-id" name="EmailId" required><br>
                    <input type="password" placeholder="password" name="Password" required><br>
                    <input type="submit" value="Log in">
                    
                   
                </form>
                    <p>click here<a href="SignUpPage" style=" color: rgba(0, 255, 255, 0.568);
                        background-color: transparent;"> New User?</a></p>           
                </div>
                <div class="underlay-photo"></div>
                      <div class="underlay-black"></div> 
</body>
</html>