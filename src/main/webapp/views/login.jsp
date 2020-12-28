<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
</head>
<body>
    <form class="form-sign-in" action="<c:url value='/Dang-nhap' />" method="POST">
        <h1>Đăng nhập</h1>
        <input placeholder="Tài khoản" id="username" name="username" type="text" required />
        <input placeholder="Mật khẩu" id="password" name="password" type="password" required />
        <input type="hidden" value="login" name="action" />
        <button type="submit">Đăng nhập</button>
        <div class="create-acc">
          <p>Bạn chưa có tài khoản? </p>
          <a href="<c:url value='/Dang-ky?action=signup' />">
            Đăng ký
          </a>
        </div>
      </form>
    
</body>
</html>