<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="j"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>*, *:before, *:after {
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
          }
          
          body {
            font-family: 'Nunito', sans-serif;
            color: #384047;
            background-image: url(https://wallpaperplay.com/walls/full/f/3/8/254067.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            
            
          }
          
          form {
            max-width: 300px;
            margin: 10px auto;
            padding: 10px 20px;
            background: #f8f8f875;
            border-radius: 8px;
            
          }
          
          h1 {
            margin: 0 0 30px 0;
            text-align: center;
            color: black;
          }
          
          input[type="text"],
          input[type="password"],
          input[type="date"],
          input[type="datetime"],
          input[type="email"],
         
          textarea,
          select {
            background: rgba(255,255,255,0.1);
            border: none;
            font-size: 16px;
            height: auto;
            margin: 0;
            outline: 0;
            padding: 15px;
            width: 100%;
            background-color: #e8eeef;
            color: #8a97a0;
            box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
            margin-bottom: 30px;
          }
          
       
          
          select {
            padding: 6px;
            height: 32px;
            border-radius: 2px;
          }
          
          button {
            padding: 19px 39px 18px 39px;
            color: rgb(0, 0, 0);
            background-color: hsla(170, 84%, 54%, 0.769);
            font-size: 18px;
            text-align: center;
            font-style: normal;
            border-radius: 5px;
            width: 100%;
            border: 1px solid hsla(170, 84%, 54%, 0.769);
            border-width: 1px 1px 3px;
            box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
            margin-bottom: 10px;
          }
          button:hover{
            color: rgb(255, 255, 255);
            transition: 250ms background ease-in;
            opacity: 0.8;
          }
          fieldset {
            margin-bottom: 30px;
            border: none;
          }
          
         
          
          label {
            display: block;
            margin-bottom: 8px;
            color: black;
            font: bold;
          }
          
          label.light {
            font-weight: 300;
            display: inline;
          }
          
          .number {
            background-color: #5fcf80;
            color: #fff;
            height: 30px;
            width: 30px;
            display: inline-block;
            font-size: 0.8em;
            margin-right: 4px;
            line-height: 30px;
            text-align: center;
            text-shadow: 0 1px 0 rgba(255,255,255,0.2);
            border-radius: 100%;
          }
          
          @media screen and (min-width: 480px) {
          
            form {
              max-width: 480px;
            }
          
          }</style>
</head>
<body>
 <br>
 				
                  <form action="registerUser"  >
                    <h1>Sign Up</h1>
                    
                    <fieldset>
                     
                      <label for="name">UserName:</label>
                      <input type="text" id="name" name="Name" required>
                      
                      <label for="mail">Email:</label>
                      <input type="email" id="mail" name="EmailId" required>
                      
                      <label for="password">Password:</label>
                      <input type="password" id="Password" name="Password" required>

                      <label for="password">Repeat Password:</label>
                      <input type="password" id="Password" name="ConPassword" required>
                      
                       </fieldset>
                    
                    <button type="submit" value="Sign Up">Sign Up</button>
                    <p>click here<a href="LoginPage" style=" color: rgba(0, 255, 255, 0.568);
                        background-color: transparent;"> Existed User?</a></p>
                  </form>
                  
                </body>
            </html>