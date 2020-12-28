<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="/common/taglib.jsp" %>
 <c:url var="userAPI" value="/api-web-user"/>
<c:url var="redirectUrl" value="/Dang-nhap?action=login"></c:url>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
    <title>Easy Accomod - Đăng Ký</title>
</head>

<body>
    <form class="form-sign-up" id="formSignup" name="myform">
        <h1>Đăng ký</h1>
        <input  placeholder="Tài khoản" name="username" type="text" />
        <input  placeholder="Mật khẩu" name="password" type="password" />
         <input  placeholder="Số điện thoại" name="phone" type="text" />
         <input  placeholder="Email" name="email" type="text" />
        <input  placeholder="Địa chỉ" name="address" type="text"/>
        
        <button type="submit" id="test">Đăng ký</button>
        <div class="go-sign-in">
            <p>Bạn đã có tài khoản? </p>
            <a href="<c:url value='/Dang-nhap?action=login' />">
                Đăng nhập
            </a>
        </div>
    </form>
    <script src="<c:url value='/template/vendor/jquery-3.5.1.min.js' />"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
    <script type="text/javascript">
    	$('#test').click(function(e){
    		e.preventDefault();
    		var data = {};
			var formSignup = $('#formSignup').serializeArray();
			$.each(formSignup, function(i, v){
				data[""+v.name+""] = v.value;
			});
			addUser(data);
    	})
       
    function addUser(data){
		$.ajax({
			url: '${userAPI}',
			type: 'POST',
			contentType: 'application/json',
			data: JSON.stringify(data),
			dataType: 'json',
			success: function (result) {
            	window.location.href = "${redirectUrl}";
            },
            error: function (error) {
            	console.log(error);
            }
		});
    	}
    </script>
</body>

</html>