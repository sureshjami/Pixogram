<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="D:UI/UI/CSS/internalstyle.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Welcome</title>
</head>

<body>

        <div class="primary-shadow"> 
                <nav class="navbar navbar-expand-lg navbar-dark bg-rgb(38, 3, 83)" style="background-color: rgb(38, 3, 83)">
                    <a class="navbar-brand" style="font-family: forte; font-size: 30px" onmouseover="this.style.color='pink'" onmouseout="this.style.color='white'" href="#">PixoGram</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <form class="form-inline my-2 my-lg-0" style="margin-left: 100px">
                                    <input class="form-control mr-sm-2" type="search" style="width: 250px; border-radius: 25px" placeholder="Search"  aria-label="Search">
                                    <button class="btn btn-outline-success my-2 my-sm-0" style="color: white; border-color: white;" type="submit">Search</button>
                        </form>
                      <ul class="navbar-nav mr-auto">
                        <li class="nav-item active dropdown" style="margin-left: 125px">
                          <a class="nav-link dropdown-toggle" href="#"  id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Upload Media <span class="sr-only">(current)</span></a>
                          <div class="dropdown-menu" style="width:200px; right: 0; left: auto;" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="singlemedia">Upload single media</a>
                            <a class="dropdown-item" href="multiplemedia">Upload multiple media</a>
                          </div>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="myMedia" >My Media</a>
                        </li>
                        <li class="nav-item">
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
                            <a class="dropdown-item" href="LoginPage">Logout</a>
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
                       <!-- <img ${image} width="100px" height="100px">-->
                        <div class="card-body">
                            <h4 class="align-items-center">${username}</h4>
                            <p class="card-text">UserId ${userid}</p>
                            <!--  <a href="showImage" class="btn btn-primary">Show Image</a>-->
                            <form method="post" action="uploadPicture" enctype="multipart/form-data">           		                                				 
                  				<input type="file" class="btn btn-primary" name="profilePicture" size="50" />    
                   				<input type="submit" class="btn btn-primary" value="Upload Profile picture" />		                     
                   			</form>                          
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 mt-2">
                <div class="secondary-shadow bg-light p-4">
                    <div class="row align-items-center justify-content-between d-flex flex-sm-column flex-md-row">
                        <div class="col-auto">
                            <h5 class="h2">Images & Videos</h5>
                        </div>
                        <div class="col-auto">
                            <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                <label class="btn btn-secondary active" >
                                    <input type="radio" name="options" id="option1"  autocomplete="off" checked > Images
                                </label>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="options" id="option2" autocomplete="off"> Videos
                                </label>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="options" id="option3" autocomplete="off"> All
                                </label>
                            </div>
                        </div>
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
                                <div class="top-left d-flex justify-content-between w-100">
                                    <p><i class="fas fa-user-circle"></i></p>
                                    <p class="pr-1"><i class="fas fa-file-video"></i></p>
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
                                    <p class="pr-1"><i class="fas fa-file-video"></i></p>
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
                                    <p class="pr-1"><i class="fas fa-file-video"></i></p>
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