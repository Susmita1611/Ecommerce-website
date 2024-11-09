<style>
*{
    margin: 0;
    padding: 0;
    font-family: Arial,Helvetica,sans-serif;
    color: black;
}
footer{
    background-image: url(./webimg/footer1.jpg) ;
    padding-top: 50px;

}
.container{
    width: 9;
    margin: auto;
    display: flex;
    justify-content: center;
}
.footer-content{
    width: 33.3%;
}
h3{
    font-size: 28px;
    margin-bottom: 15px;
    text-align: center;
}
.footer-content p{
    width: 190px;
    margin: auto;
    padding: 7px;
    font-size:19px;
}
.footer-content ul{
    text-align: center;
}
.list{
    padding: 0;
}
.list li{
    width: auto;
    text-align: center;
    list-style-type: none;
    padding: 7px;
    position: relative;
    font-size:19px;
}
.list li::before{
    content: '';
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 100%;
    width: 0;
    height: 2px;
    background: #f18930;
    transition-duration: .5s;
    }
    .list li:hover::before{
        width: 70px;
    }
    .social-icons li{
        text-align: center;
        padding: 0;
    }
    .social-icons li{
        display: inline-block;
        text-align: center;
        padding: 5px;
    }
    .social-icons i{
        color: purple;
        font-size: 35px;
    }
    a{
        text-decoration: none;
    }
    a:hover{
        color: #f18930;
    }
    .social-icons i: hover{
        color: #f18930;
    }
    .bottom-bar{
        background: ;
        text-align: center;
        padding: 10px 0;
        margin-top: 50px;
    }
    .bottom-bar p{
        colo: #343434;
        margin: 0;
        font-size: 16px;
        padding: 7px;
    }
</style>


<footer>
<div class="p-0 my-3 container">
    <div class="footer-content">
        <h3>Contact Us</h3>   
        <p> Email: goswamisusmita032@gmail.com</p>
        <p> Phone: 1234567890</p>
        <p>Address: Beltola Tiniali, Guwahati</p>
        </div>
<div class="footer-content">
    <h3>Quick Links</h3>
    <ul class="list">
        <li><a href="">Home</a></li>
        <li><a href="">About</a></li>
        <li><a href="">Services</a></li>
        <li><a href="">Products</a></li>
        <li><a href="">contact</a></li>
    </ul>
</div>
<div class="footer-content ">
    <h3>Follow Us</h3>
    <ul class="social-icons">
    <li><a href=""><i class="fab fa-facebook"></i></a></li>
    <li><a href=""><i class="fab fa-instagram"></i></a></li>
    <li><a href=""><i class="fab fa-linkedin"></i></a></li>
    <li><a href=""><i class="fab fa-twitter"></i></a></li>
    </ul>
</div>
</div>
<div class="bottom-bar">
    <p>&copy;2023 your company. all rights reserved </p>


</div>
</footer>
