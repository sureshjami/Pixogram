<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<style>
        @import url(https://fonts.googleapis.com/css?family=Exo:100,200,400);
       @import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);
       </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-dark" style="  box-shadow: 0 20px 20px -20px rgba(3, 142, 255, 0.781);">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <div style="float: left;
            color: #fff;
            font-family: 'Exo', sans-serif;
            font-size: 35px;
            font-weight: 200;">
          Pixo  <span style="color: #ff9100 !important; ;"><strong>Gram</strong></span></div>
          &nbsp;&nbsp;&nbsp;
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                        
                  <a class="btn btn-outline-light" href="accountUpdate">Account</a>
                </li></ul>
         
          <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <form class="form-inline my-2 my-lg-0" style="float: left;" >
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" >
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="float: left;">Search</button>
          </form>
        </div>
      </nav>


    <section class="container">
        <div class="row m-4">
            <div class="col-lg-4 mt-2">
                <div class="sticky-top">
                    <div class="text-white bg-dark mb-3" style=" box-shadow: 0 20px 25px -18px rgba(3, 142, 255, 0.781);">
                        <img src="showImage" class="card-img-top" alt="">
                        <div class="card-body">
                            <h5 class="card-title">${username}</h5>
                        </div>
                    </div>
                    <div class="card border-info  mb-3">
                        <!-- <img src="./images/user-default-logo.png" class="card-img-top" alt=""> -->
                        <div class="card-body">
                            <p class="card-text d-flex flex-column">
                                <a href="#" class="btn btn-dark m-1 form-control">Newsfeed</a>
                                <a href="#" class="btn btn-dark m-1 form-control">Blocked Accounts</a>
                                <a href="accountUpdate" class="btn btn-dark m-1 form-control">Account Update</a>
                                <a href="#" class="btn btn-dark m-1 form-control">Search</a>
                                <a href="LoginPage" class="btn btn-dark m-1 form-control">Logout</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 mt-2">
                <div class="secondary-shadow bg-dark p-4" style=" box-shadow: 0 20px 25px -18px rgba(3, 142, 255, 0.781);color: rgba(255, 255, 255, 0.877)">
                    <h5 class="h2">Newsfeed</h5>
                    <div class="row">
                        <div class="col">Today</div>
                        <div class="col">13:00</div>
                        <div class="col">You shared the "iiht" user image title "Full Stackathon"</div>
                    </div>
                    <div class="row">
                        <div class="col">31-Oct-18</div>
                        <div class="col">14:00</div>
                        <div class="col">You liked the "IOT Stack Beginners" picture</div>
                    </div>
                    <div class="row">
                        <div class="col">30-Oct-18</div>
                        <div class="col">08:00</div>
                        <div class="col">You shared the "google" user media image with title "programming for all"</div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/cc23b688b2.js"></script>
    <script src="./script/script.js"></script>
</body>
</html>