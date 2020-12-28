<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="UTF-8">
<title>Easy Accomod</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Lato&family=Roboto&display=swap" rel="stylesheet">
<style>
body {
  margin: 0;
  font-family: 'Lato', sans-serif;
}

.topnav {
  overflow: hidden;
  font-family: 'Lato', sans-serif;
  background-color: rgb(153, 203, 245);
  padding-left: 200px;
  padding-right: 200px;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 15px;
  margin-right: 20px;
  padding-top: 20px;
  padding-bottom: 20px;
}

.topnav a:hover {
  background-color: rgb(181, 225, 255);
  color: rgb(3, 64, 121);
}

.topnav a.active {
  background-color: #3a9dfa;
  color: white;
}

.topnav .icon {
  display: none;
}

#login{
    float: right;
}

.search-container {
    padding-left: 200px; 
    padding-right: 200px;
    font-size: 15px;   
}

input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 15px;
  border: solid 0.5px black;
  border-radius: 2px;
}

.search-container button[type=submit] {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #3a9dfa;
  font-size: 15px;
  border: solid 0.5px black;
  border-radius: 2px;
  cursor: pointer;
}

.search-container button:hover {
  background:rgb(181, 225, 255);
}

.search-bar{
    display: inline;
    float: right;
}

.dropdown {
	width: 180px;
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: rgb(0, 0, 0);
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.dropdown:hover .dropbtn {
  background-color: rgb(181, 225, 255);
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
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.all{
    background-color:#3a9dfa;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.container{
    margin-top: 20px;
    margin-left: 200px;
    margin-right: 212px;
    border: 0.5px black solid;
    border-radius: 3px;
}

.title{
    margin-left: 10px;
}

.img-contain{
    width: 100%;
    display: flex;
    margin-bottom: 20px;
}

.btn-img{
	font-size: 18px;
	color: white;
    width: 42%;
    height: 250px;
    margin-top: 10px;
    margin-left: 5%;
    background-position: center; /* Center the image */
  	background-repeat: no-repeat; /* Do not repeat the image */
  	background-size: cover;
      border-radius: 5px;
}

#hn{
 background-image: url("https://tourdulichuytin.com/images/tin-tuc/cam-nang-du-lich/ha-noi/ho-hoan-kiem-ve-dem.jpg");
}

#hcm{
 background-image: url("https://file1.dangcongsan.vn/data/0/images/2020/01/22/maipq/tp-hcm.jpg?dpi=150&quality=100&w=680");
}
 
.news-container{
    width: 100%;
    display: flex;
    flex-wrap: wrap;
}

.img{
    margin: 3%;
    width: 150px;
    height: 150px;
    border: 0.5px solid black;
}

.news-form p{
    font-size: 12px;
}

.news-form{
    display: flex;
    width: 48%;
    margin: 8px;
    height: 180px;
    box-shadow: 2px 2px 5px 1px rgba(0, 0, 0, 0.2);
    background-color: #faeed849;
}
.image{
    margin: 3px;
}
.text{
    margin-left: 10px;
}

.news-form p.news-title{
    font-size: 16px;
    font-weight: 600;
    color: #1100ff;
}

.news-form p.news-price{
    color: red;
    font-size: 16px;
    font-weight: 600;
}
.news-form p.news-area{
    display: inline;
    margin-right: 30px;
    font-size: 15px;
    font-weight: 600;
}
.news-form p.news-address{
    display: inline;
    font-size: 15px;
    font-weight: 600;
}
#dangtin{
	float: right;	
}

.search-container button.loctin{
	float: left;	
}
@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
  .topnav{
      padding-left: 0px;
      padding-right: 0px;
  }
  #login{
      float: left;
  }
  .search-container{
      padding-left: 0px;
      padding-right: 0px;
  }
  .search-bar{
  	float: left;
  	margin-right: 150px;
  }
  .dropdown {
      float: none;
  }
  .container{
      margin-left: 2px;
      margin-right: 2px;
  }
  .img-contain{
  		display: block;
  }
  .btn-img{
  		margin-left: 5%;
  		 width: 90%;
    	height: 210px;
  }
  .news-container{
      display: block;
  }
  .news-form{
      width: 90%;
      margin-left: 5%;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
	 .img-contain{
  		display: block;
  }
}
</style>
</head>
<body>
	<div class="topnav" id="myTopnav">
        <a href="#trangchu" class="active"><i class="fa fa-fw fa-home"></i> Trang chủ</a> 
        <a href="#chothuephongtro">Cho thuê phòng trọ</a> 
        <a href="#chothuenha">Cho thuê nhà</a> 
        <a href="#timnguoioghep">Tìm người ở ghép</a> 
        <a href="javascript:void(0);" class="icon" onclick="myFunction()"> 
            <i class="fa fa-bars"></i>
            <a href="#" id="login" class="active"><i class="fa fa-fw fa-user"></i>Đăng nhập</a>
		</a> 
        <a href="#" id="dangtin" class="active"> Đăng tin</a>
    </div>
    
    <div class="search-container">
        <form action="" class="search-bar">
          <input type="text" placeholder="Tìm kiếm.." name="search">
          <button type="submit"><i class="fa fa-search"></i></button>
        </form>
        <div class="dropdown">
            <button class="dropbtn">Tỉnh thành
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <input type="text" placeholder="Tìm kiếm.." name="search">
              <a href="#" class="all">Tất cả</a>
              <a href="#">Hồ Chí Minh</a>
              <a href="#">Hà Nội</a>
              <a href="#">Đà Nẵng</a>
              <a href="#">Hải Phòng</a>
            </div>
        </div> 
        <div class="dropdown">
            <button class="dropbtn">Quận, huyện
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <input type="text" placeholder="Tìm kiếm.." name="search">
              <a href="#" class="all">Tất cả</a>
            </div>
        </div> 
        <div class="dropdown">
            <button class="dropbtn">Mức giá
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
              <a href="#" class="all">Tất cả</a>
               <a href="#">Dưới 1 triệu</a>
              <a href="#">1 -2 triệu</a>
              <a href="#">2 - 3 triệu</a>
              <a href="#">3 - 4 triệu</a>
              <a href="#">4 - 5 triệu</a>
              <a href="#">Trên 5 triệu</a>
            </div>
        </div> 
        <div class="dropdown">
            <button class="dropbtn">Diện tích
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
              <a href="#" class="all">Tất cả</a>
               <a href="#">Dưới 15 m2</a>
              <a href="#">15-20 m2</a>
              <a href="#">20-25 m2</a>
              <a href="#">25-30 m2</a>
              <a href="#">30-35 m2</a>
              <a href="#">Trên 35 m2</a>
            </div>
        </div> 
        <button type="submit" class="loctin">Lọc tin</button>
    </div>

    <br>
    <br>
	<div class="container">
        <h3 class="title">Khu vực nổi bật</h3>
        <div class="img-contain">
            <button class="btn-img" id="hcm">Hồ Chí Minh</button>
            <button class="btn-img" id="hn">Hà Nội</button>
        </div>
        <hr>
        <h3 class="title">Bảng tin</h3>
        <div class="news-container">
            <div class="news-form">
                <div class="image">
                    <img src="https://timviec365.com/pictures/news/2020/03/13/pvk1584102929.jpg" alt="#" class="img">                    
                </div>
                <div class="text">
                    <p class="news-title">Cho thuê phòng trọ quân Cầu Giấy full nội thất</p>
                    <p class="news-price">2 triệu - 3 triệu</p>
                    <p class="news-area">20 mét vuông</p>
                    <p class="news-address">Cầu Giấy - Hà Nội</p>
                    <p class="news-des">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque voluptate modi mollitia!</p>
                </div>  
            </div>
            <div class="news-form">
                <div class="image">
                    <img src="https://timviec365.com/pictures/news/2020/03/13/pvk1584102929.jpg" alt="#" class="img">                    
                </div>
                <div class="text">
                    <p class="news-title">Cho thuê phòng trọ quân Cầu Giấy full nội thất</p>
                    <p class="news-price">2 triệu - 3 triệu</p>
                    <p class="news-area">20 mét vuông</p>
                    <p class="news-address">Cầu Giấy - Hà Nội</p>
                    <p class="news-des">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque voluptate modi mollitia!</p>
                </div>  
            </div>
            <div class="news-form">
                <div class="image">
                    <img src="https://timviec365.com/pictures/news/2020/03/13/pvk1584102929.jpg" alt="#" class="img">                    
                </div>
                <div class="text">
                    <p class="news-title">Cho thuê phòng trọ quân Cầu Giấy full nội thất</p>
                    <p class="news-price">2 triệu - 3 triệu</p>
                    <p class="news-area">20 mét vuông</p>
                    <p class="news-address">Cầu Giấy - Hà Nội</p>
                    <p class="news-des">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque voluptate modi mollitia!</p>
                </div>  
            </div>
            <div class="news-form">
                <div class="image">
                    <img src="https://timviec365.com/pictures/news/2020/03/13/pvk1584102929.jpg" alt="#" class="img">                    
                </div>
                <div class="text">
                    <p class="news-title">Cho thuê phòng trọ quân Cầu Giấy full nội thất</p>
                    <p class="news-price">2 triệu - 3 triệu</p>
                    <p class="news-area">20 mét vuông</p>
                    <p class="news-address">Cầu Giấy - Hà Nội</p>
                    <p class="news-des">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque voluptate modi mollitia!</p>
                </div>  
            </div>
            <div class="news-form">
                <div class="image">
                    <img src="https://timviec365.com/pictures/news/2020/03/13/pvk1584102929.jpg" alt="#" class="img">                    
                </div>
                <div class="text">
                    <p class="news-title">Cho thuê phòng trọ quân Cầu Giấy full nội thất</p>
                    <p class="news-price">2 triệu - 3 triệu</p>
                    <p class="news-area">20 mét vuông</p>
                    <p class="news-address">Cầu Giấy - Hà Nội</p>
                    <p class="news-des">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque voluptate modi mollitia!</p>
                </div>  
            </div>
            <div class="news-form">
                <div class="image">
                    <img src="https://timviec365.com/pictures/news/2020/03/13/pvk1584102929.jpg" alt="#" class="img">                    
                </div>
                <div class="text">
                    <p class="news-title">Cho thuê phòng trọ quân Cầu Giấy full nội thất</p>
                    <p class="news-price">2 triệu - 3 triệu</p>
                    <p class="news-area">20 mét vuông</p>
                    <p class="news-address">Cầu Giấy - Hà Nội</p>
                    <p class="news-des">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque voluptate modi mollitia!</p>
                </div>  
            </div>
            <div class="news-form">
                <div class="image">
                    <img src="https://timviec365.com/pictures/news/2020/03/13/pvk1584102929.jpg" alt="#" class="img">                    
                </div>
                <div class="text">
                    <p class="news-title">Cho thuê phòng trọ quân Cầu Giấy full nội thất</p>
                    <p class="news-price">2 triệu - 3 triệu</p>
                    <p class="news-area">20 mét vuông</p>
                    <p class="news-address">Cầu Giấy - Hà Nội</p>
                    <p class="news-des">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque voluptate modi mollitia!</p>
                </div>  
            </div>
            <div class="news-form">
                <div class="image">
                    <img src="https://timviec365.com/pictures/news/2020/03/13/pvk1584102929.jpg" alt="#" class="img">                    
                </div>
                <div class="text">
                    <p class="news-title">Cho thuê phòng trọ quân Cầu Giấy full nội thất</p>
                    <p class="news-price">2 triệu - 3 triệu</p>
                    <p class="news-area">20 mét vuông</p>
                    <p class="news-address">Cầu Giấy - Hà Nội</p>
                    <p class="news-des">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque voluptate modi mollitia!</p>
                </div>  
            </div>
            <div class="news-form">
                <div class="image">
                    <img src="https://timviec365.com/pictures/news/2020/03/13/pvk1584102929.jpg" alt="#" class="img">                    
                </div>
                <div class="text">
                    <p class="news-title">Cho thuê phòng trọ quân Cầu Giấy full nội thất</p>
                    <p class="news-price">2 triệu - 3 triệu</p>
                    <p class="news-area">20 mét vuông</p>
                    <p class="news-address">Cầu Giấy - Hà Nội</p>
                    <p class="news-des">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque voluptate modi mollitia!</p>
                </div>  
            </div>
            <div class="news-form">
                <div class="image">
                    <img src="https://timviec365.com/pictures/news/2020/03/13/pvk1584102929.jpg" alt="#" class="img">                    
                </div>
                <div class="text">
                    <p class="news-title">Cho thuê phòng trọ quân Cầu Giấy full nội thất</p>
                    <p class="news-price">2 triệu - 3 triệu</p>
                    <p class="news-area">20 mét vuông</p>
                    <p class="news-address">Cầu Giấy - Hà Nội</p>
                    <p class="news-des">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque voluptate modi mollitia!</p>
                </div>  
            </div>
            <div class="news-form">
                <div class="image">
                    <img src="https://timviec365.com/pictures/news/2020/03/13/pvk1584102929.jpg" alt="#" class="img">                    
                </div>
                <div class="text">
                    <p class="news-title">Cho thuê phòng trọ quân Cầu Giấy full nội thất</p>
                    <p class="news-price">2 triệu - 3 triệu</p>
                    <p class="news-area">20 mét vuông</p>
                    <p class="news-address">Cầu Giấy - Hà Nội</p>
                    <p class="news-des">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque voluptate modi mollitia!</p>
                </div>  
            </div>
            
        </div>
	</div>

	<script>
		function myFunction() {
			var x = document.getElementById("myTopnav");
			if (x.className === "topnav") {
				x.className += " responsive";
			} else {
				x.className = "topnav";
			}
        }
       
	</script>


</body>
</html>