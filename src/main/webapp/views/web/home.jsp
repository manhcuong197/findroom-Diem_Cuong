<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>

<title>Trang Trủ</title>
</head>
<body>
	<div class="topnav" id="myTopnav">
        <a href="#trangchu" class="active"><i class="fa fa-fw fa-home"></i> Trang chủ</a> 
        <a href="#chothuephongtro">Cho thuê phòng trọ</a> 
        <a href="#chothuenha">Cho thuê nhà</a> 
        <a href="#timnguoioghep">Tìm người ở ghép</a> 
        <a href="javascript:void(0);" class="icon" onclick="myFunction()"> 
            <i class="fa fa-bars"></i>
            <c:if test="${not empty USERMODEL }">			
				<a id="login" href="<c:url value='/thoat?action=logout' />">Thoát</a>
				<a id="login" href="#" >Xin chào, ${USERMODEL.username}</a>
			</c:if>
			<c:if test="${empty USERMODEL }">
				<a id="login" href="<c:url value='/Dang-nhap?action=login' />">Đăng nhập</a>
				<a id="login" href="<c:url value='/Dang-ky?action=signup' />">Đăng ký</a>
			</c:if>
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