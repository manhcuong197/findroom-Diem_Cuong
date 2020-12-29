<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lato&family=Roboto&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/98524fe5fa.js" crossorigin="anonymous"></script>
    <title>Easy Accomod</title>

</head>

<body>
    <div class="container">
        <div class="image">
            <div class="w3-content w3-display-container">
                <img class="mySlides" src="https://www.hancorp.com.vn/wp-content/uploads/2020/08/phong-tro-2.jpg">
                <img class="mySlides"
                    src="https://1.bp.blogspot.com/-FlKYx8wYEQA/XSmV0UC5e9I/AAAAAAAAAD4/MkLzk4R4mMkzezUfcIy3y2cJ9MSiETt-ACLcBGAs/s1600/bd98ecc718fafca4a5eb.jpg">
                <img class="mySlides"
                    src="https://duanhungthinhpropertyx.com/wp-content/uploads/2019/08/bi-kip-thue-phong-tro-1-nguoi-o-gia-re-tai-tp-hcm.jpg">

                <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
                <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
            </div>
        </div>

        <div class="info">
            <div class="avatar">
                <img class="avt-img"
                    src="https://1.bp.blogspot.com/-8MaGl-wj4vY/WmW3H_YLVEI/AAAAAAAAAAs/Rv0lJByRIlAbyABNdH5bIx5gX0-9mXMoACLcBGAs/s1600/FB_IMG_1516546946957.jpg"
                    alt="avt">
            </div>
        
        </div>

        <div class="info-detail">
            <p class="title">${room.description }</p>
          
            <h3>Thông tin chi tiết</h3> 
            <table class="detail">
                <tr>
                    <td class="tbl-title">Địa chỉ: </td>
                    <td class="tbl-nd" colspan="3">${room.numberRoom }, ${room.streetRoom }, ${room.districtRoom}, ${room.cityRoom }</td>
                </tr>
                <tr>
                    <td class="tbl-title">Diện tích: </td>
                    <td class="tbl-nd" colspan="3">${room.area } m<sup>2</sup></td>
                </tr>
                <tr>
                    <td class="tbl-title">Loại phòng: </td>
                    <td class="tbl-nd" colspan="3">${room.typeRoom }</td>
                </tr>
                <tr>
                    <td class="tbl-title">Giá: </td>
                    <td class="tbl-nd">${room.price } triệu VNĐ/tháng</td>
                    <td class="tbl-title">Bếp:</td>
                    <td class="tbl-nd">${room.kitchen }</td>
                </tr>
                <tr>
                    <td class="tbl-title">Chung chủ: </td>
                    <td class="tbl-nd">Không</td>
                    <td class="tbl-title">Điều hòa:</td>
                    <td class="tbl-nd">${room.air_conditioning }</td>
                </tr>
                <tr>
                    <td class="tbl-title">Phòng tắm:</td>
                    <td class="tbl-nd">${room.bathroom }</td>
                    <td class="tbl-title">Ban công:</td>
                    <td class="tbl-nd">${room.balcony }</td>
                </tr>
                 <tr>
                    <td class="tbl-title">Tiền nước:</td>
                    <td class="tbl-nd">${room.water }</td>
                    <td class="tbl-title">Tiền điện:</td>
                    <td class="tbl-nd">${room.electricity }</td>
                </tr>
                
            </table>  
             <div class="cmt">
                <b>Bình luận</b><i class="fas fa-comments"></i>
                <br>
                <div class="user-cmt">
                    <div class="cmt-avt">
                        <img class="avt-img"
                        src="https://www.pngitem.com/pimgs/m/421-4212266_transparent-default-avatar-png-default-avatar-images-png.png"
                        alt="avt">
                    </div>                
                    <textarea class="box-cmt" name="" id="" cols="30" rows="5" placeholder="Bình luận.."></textarea>
                </div>
            </div>
        </div>

    </div>

    <script>
        var slideIndex = 1;
        showDivs(slideIndex);

        function plusDivs(n) {
            showDivs(slideIndex += n);
        }

        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("mySlides");
            if (n > x.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = x.length }
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            x[slideIndex - 1].style.display = "block";
        }
    </script>
</body>

</html>