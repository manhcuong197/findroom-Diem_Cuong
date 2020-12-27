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
  font-family: Arial, Helvetica, sans-serif;
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
  background:  rgb(181, 225, 255);
  font-size: 15px;
  border: solid 0.5px black;
  border-radius: 2px;
  cursor: pointer;
}

.search-container button:hover {
  background: #ccc;
}

.search-bar{
    display: inline;
    float: right;
}

.dropdown {
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
      float: right;
  }
  .search-container{
      padding-left: 0px;
  }
  .dropdown {
      float: none;
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
            <a href="#" id="login"><i class="fa fa-fw fa-user"></i>Đăng nhập</a>
		</a>
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
            </div>
        </div> 
        <div class="dropdown">
            <button class="dropbtn">Diện tích
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
              <a href="#" class="all">Tất cả</a>
            </div>
        </div> 
    </div>

    <br>
    <br>
	<div>
		<p>Resize the browser window to see how it works.</p>
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