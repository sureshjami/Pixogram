<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="D:UI/UI/CSS/internalstyle.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Blocked Accounts</title>
    <script src="main.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

  <div class="primary shadow">
    <nav class="navbar navbar-expand-lg navbar-dark bg-rgb(38, 3, 83)" style="background-color: rgb(38, 3, 83)">
        <a class="navbar-brand" style="font-family: forte; font-size: 30px" onmouseover="this.style.color='pink'" onmouseout="this.style.color='white'" href="welcome">PixoGram</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form class="form-inline my-2 my-lg-0" style="margin-left: 100px">
                        <input class="form-control mr-sm-2" type="search" style="width: 250px; border-radius: 25px" placeholder="Search"  aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" style="color: white; border-color: white;" type="submit">Search</button>
            </form>
          <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown" style="margin-left: 125px">
                  <a class="nav-link dropdown-toggle" href="#"  id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Upload Media <span class="sr-only">(current)</span></a>
                  <div class="dropdown-menu" style="width:200px; right: 0; left: auto;" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="siglemedia">Upload single media</a>
                    <a class="dropdown-item" href="multiplemedia">Upload multiple media</a>
                  </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="myMedia" >My Media</a>
            </li>
            <li class="nav-item ">
              <a class="nav-link" href="followersfollowing">Followers/Following</a>
            </li>
            <li class="nav-item dropdown" style="margin-left: 315px;">
              <a class="nav-link dropdown-toggle" href="#"  id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Account
              </a>
              <div class="dropdown-menu" style="width:150px; right: 0; left: auto;" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Newsfeed</a>
                <a class="dropdown-item" href="accountUpdate">Account Update</a>
                <a class="dropdown-item" href="blockedAccounts">Blocked Accounts</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Logout</a>
              </div>
            </li>            
          </ul>
        </div>
      </nav>
    </div>

    <section class="container">
        <div class="row m-4">
            <div class="col-lg-4 mt-2">
                <div class="sticky-top">
                    <div class="card text-center secondary-shadow">
                        <img src="showImage" class="card-img-top" alt="">
                        <div class="card-body">
                            <h4 class="align-items-center">${username}</h4>
                            <p class="card-text">UserId ${userid}</p>
                            <!-- <a href="#" class="btn btn-primary">Settings</a> -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 mt-2">
                <div class="secondary-shadow bg-light p-4">
                    <h5 class="h2">Blocked Accounts</h5>
                    <div class="row mt-5">
                        <div class="col-sm-12 col-md-4">
                            <div class="card mb-3">
                                <!-- set a width on the image otherwise it will expand to full width       
                                https://dummyimage.com/400x200/563d7c/ffffff&text=.card-img-topfff&text=.card-img-top-->
                                <div class="media-container">
                                    <img class="card-img-top img-fluid" src="https://dummyimage.com/600x600/cfcfcf/"
                                        alt="Card image cap">
                                </div>
                                <div class="card-body text-center">
                                    <p class="badge badge-dark"><span class="lead">@Username</span></p>
                                    <a href="#" class="btn btn-dark m-1 form-control disabled"  style="background-color:red ">Unblock</a>
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
                                <div class="card-body text-center">
                                    <p class="badge badge-dark"><span class="lead">@Username</span></p>
                                    <a href="#" class="btn btn-dark m-1 form-control disabled"  style="background-color:red">Unblock</a>
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
                                <div class="card-body text-center">
                                    <p class="badge badge-dark"><span class="lead">@Username</span></p>
                                    <a href="#" class="btn btn-dark m-1 form-control disabled"  style="background-color:red">Unblock</a>
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
                                <div class="card-body text-center">
                                    <p class="badge badge-dark"><span class="lead">@Username</span></p>
                                    <a href="#" class="btn btn-dark m-1 form-control disabled"  style="background-color:red">Unblock</a>
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
                                <div class="card-body text-center">
                                    <p class="badge badge-dark"><span class="lead">@Username</span></p>
                                    <a href="#" class="btn btn-dark m-1 form-control disabled"  style="background-color:red">Unblock</a>
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
                                <div class="card-body text-center">
                                    <p class="badge badge-dark"><span class="lead">@Username</span></p>
                                    <a href="#" class="btn btn-dark m-1 form-control disabled"  style="background-color:red">Unblock</a>
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
                                <div class="card-body text-center">
                                    <p class="badge badge-dark"><span class="lead">@Username</span></p>
                                    <a href="#" class="btn btn-dark m-1 form-control disabled" style="background-color:red">Unblock</a>
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
                                <div class="card-body text-center">
                                    <p class="badge badge-dark"><span class="lead">@Username</span></p>"
                                    <a href="#" class="btn btn-dark m-1 form-control disabled" style="background-color:red">Unblock</a>
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
                                <div class="card-body text-center">
                                    <p class="badge badge-dark"><span class="lead">@Username</span></p>
                                    <a href="#" class="btn btn-dark m-1 form-control disabled" style="background-color:red">Unblock</a>
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

</body>
</html>