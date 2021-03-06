<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>

<title>Trang Trủ</title>
</head>
<body>
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
        <c:forEach var="item" items="${room.listResult }">
        </c:forEach>
        <div class="news-container">
        <c:forEach var="item" items="${room.listResult }" >
            <div class="news-form">
    
              <div class="image">
              <a href="<c:url value='/chi-tiet?id=${item.id}' />" class="room-img--link">
										<img src="https://timviec365.com/pictures/news/2020/03/13/pvk1584102929.jpg" class="img">
									</a>
                                        
                </div>
                <div class="text">
                    <p class="news-title">${item.description }</p>
                    <p class="news-price">${item.price } triệu VNĐ</p>
                    <p class="news-area">${item.area } m<sup>2</sup></p>
                    
                </div>  
                </div>
        	</c:forEach>
                
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