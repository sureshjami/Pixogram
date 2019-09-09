<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@page session="true" %>
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
           background-image: url(https://wallpaperplay.com/walls/full/4/7/5/153445.jpg);
			background-size: cover;
           }
           
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
                                            <p class="card-text d-flex flex-md-column flex-sm-row">
                                                <a href="singlemedia" class="btn btn-dark m-1 form-control">Upload</a>
                                                <a href="home" class="btn btn-dark m-1 form-control">My Media</a>
                                                <a href="#" class="btn btn-dark m-1 form-control">Followers</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8 mt-2">
                                <div class="secondary-shadow bg-dark p-4" style="box-shadow: 0 20px 25px -18px rgba(3, 142, 255, 0.781);">
                                    <div class="row align-items-center justify-content-between d-flex flex-sm-column flex-md-row">
                                        <div class="col-auto">
                                            <h5 class="h2" style="color: white;">Images & Videos</h5>
                                        </div>
                                        <div class="col-auto">
                                            <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                                <label class="btn btn-outline-light ">
                                                    <input type="radio" name="options" id="option1" autocomplete="off" checked> Images
                                                </label>
                                                <label class="btn btn-outline-light">
                                                    <input type="radio" name="options" id="option2" autocomplete="off"> Videos
                                                </label>
                                                <label class="btn btn-outline-light">
                                                    <input type="radio" name="options" id="option3" autocomplete="off"> All
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                    
                                    <div class="card-group">
  <table>
    
    <td>
   <div>
      <div class="card" style="width:270px">
     
      <j:if test="${!empty rakesh}">
      <j:forEach var="chd" items="${rakesh}">
      <tr>
      <td>
 
 
        <!-- <img class="card-img-top" src="${chd.fname}"  Style="width:400px; height:400px;"> -->
         <div class="card-body">
         <h4 style="color:white;" class="card-title">${chd.title}</h4>
         <p style="color:white;" class="card-text">${chd.description}</p>
          
          <p> <small  style="color:yellow;" class="text-muted">${chd.tags}</small></p>
      </div>
          </td>
      </tr>
      </j:forEach>
      </j:if>
    </div>
  </div>
     </td>
    </table>
</div>
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    <div class="row mt-5">
                                        <div class="col-sm-12 col-md-4">
                                            <div class="card mb-3">
                                                <!-- set a width on the image otherwise it will expand to full width       
                                                    https://dummyimage.com/400x200/563d7c/ffffff&text=.card-img-topfff&text=.card-img-top-->
                                                <div class="media-container">
                                                    <img class="card-img-top img-fluid" src="https://dummyimage.com/600x600/cfcfcf/"
                                                        alt="Card image cap">
                                                </div>
                                                <div class="top-left d-flex justify-content-end w-100">
                                                    <p class="pr-1"><i class="fas fa-image"></i></p>
                                                </div>
                                                <div class="card-body d-flex justify-content-between">
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-thumbs-up"></i>&nbsp;12</span></p>
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-thumbs-down"></i>&nbsp;1</span></p>
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-comment-dots"></i>&nbsp;5</span></p>
                                                </div>
                                            </div>
                                            <!-- /.card -->
                                        </div>
                                        <!-- /.col-sm-4 -->
                                        <div class="col-sm-12 col-md-4">
                                            <div class="card mb-3">
                                                <!-- set a width on the image otherwise it will expand to full width       
                                                            https://dummyimage.com/400x200/563d7c/ffffff&text=.card-img-topfff&text=.card-img-top-->
                                                <div class="media-container">
                                                    <img class="card-img-top img-fluid" src="https://dummyimage.com/600x600/cfcfcf/"
                                                        alt="Card image cap">
                                                </div>
                                                <div class="top-left d-flex justify-content-end w-100">
                                                    <p class="pr-1"><i class="fas fa-image"></i></p>
                                                </div>
                                                <div class="card-body d-flex justify-content-between">
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-thumbs-up"></i>&nbsp;12</span></p>
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-thumbs-down"></i>&nbsp;1</span></p>
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-comment-dots"></i>&nbsp;5</span></p>
                                                </div>
                                            </div>
                                            <!-- /.card -->
                                        </div>
                                        <!-- /.col-sm-4 -->
                                        <div class="col-sm-12 col-md-4">
                                            <div class="card mb-3">
                                                <!-- set a width on the image otherwise it will expand to full width       
                                                            https://dummyimage.com/400x200/563d7c/ffffff&text=.card-img-topfff&text=.card-img-top-->
                                                <div class="media-container">
                                                    <img class="card-img-top img-fluid" src="https://dummyimage.com/600x600/cfcfcf/"
                                                        alt="Card image cap">
                                                </div>
                                                <div class="top-left d-flex justify-content-end w-100">
                                                    <p class="pr-1"><i class="fas fa-image"></i></p>
                                                </div>
                                                <div class="card-body d-flex justify-content-between">
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-thumbs-up"></i>&nbsp;12</span></p>
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-thumbs-down"></i>&nbsp;1</span></p>
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-comment-dots"></i>&nbsp;5</span></p>
                                                </div>
                                            </div>
                                            <!-- /.card -->
                                        </div>
                                        <!-- /.col-sm-4 -->
                                    </div>
                                    
                                    
                                    
                                    <div class="row mt-5">
                                        <div class="col-sm-12 col-md-4">
                                            <div class="card mb-3">
                                                <!-- set a width on the image otherwise it will expand to full width       
                                                        https://dummyimage.com/400x200/563d7c/ffffff&text=.card-img-topfff&text=.card-img-top-->
                                                <div class="media-container">
                                                    <img class="card-img-top img-fluid" src="https://dummyimage.com/600x600/cfcfcf/"
                                                        alt="Card image cap">
                                                </div>
                                                <div class="top-left d-flex justify-content-end w-100">
                                                    <p class="pr-1"><i class="fas fa-image"></i></p>
                                                </div>
                                                <div class="card-body d-flex justify-content-between">
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-thumbs-up"></i>&nbsp;12</span></p>
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-thumbs-down"></i>&nbsp;1</span></p>
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-comment-dots"></i>&nbsp;5</span></p>
                                                </div>
                                            </div>
                                            <!-- /.card -->
                                        </div>
                                        <!-- /.col-sm-4 -->
                                        <div class="col-sm-12 col-md-4">
                                            <div class="card mb-3">
                                                <!-- set a width on the image otherwise it will expand to full width       
                                                                https://dummyimage.com/400x200/563d7c/ffffff&text=.card-img-topfff&text=.card-img-top-->
                                                <div class="media-container">
                                                    <img class="card-img-top img-fluid" src="https://dummyimage.com/600x600/cfcfcf/"
                                                        alt="Card image cap">
                                                </div>
                                                <div class="top-left d-flex justify-content-end w-100">
                                                    <p class="pr-1"><i class="fas fa-image"></i></p>
                                                </div>
                                                <div class="card-body d-flex justify-content-between">
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-thumbs-up"></i>&nbsp;12</span></p>
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-thumbs-down"></i>&nbsp;1</span></p>
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-comment-dots"></i>&nbsp;5</span></p>
                                                </div>
                                            </div>
                                            <!-- /.card -->
                                        </div>
                                        <!-- /.col-sm-4 -->
                                        <div class="col-sm-12 col-md-4">
                                            <div class="card mb-3">
                                                <!-- set a width on the image otherwise it will expand to full width       
                                                                https://dummyimage.com/400x200/563d7c/ffffff&text=.card-img-topfff&text=.card-img-top-->
                                                <div class="media-container">
                                                    <img class="card-img-top img-fluid" src="https://dummyimage.com/600x600/cfcfcf/"
                                                        alt="Card image cap">
                                                </div>
                                                <div class="top-left d-flex justify-content-end w-100">
                                                    <p class="pr-1"><i class="fas fa-image"></i></p>
                                                </div>
                                                <div class="card-body d-flex justify-content-between">
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-thumbs-up"></i>&nbsp;12</span></p>
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-thumbs-down"></i>&nbsp;1</span></p>
                                                    <p class="m-1"><span class="badge badge-dark"><i
                                                                class="fas fa-comment-dots"></i>&nbsp;5</span></p>
                                                </div>
                                            </div>
                                            <!-- /.card -->
                                        </div>
                                        <!-- /.col-sm-4 -->
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