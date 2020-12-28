<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="topnav" id="myTopnav">
        <a href="<c:url value='/trang-chu' />" class="active"><i class="fa fa-fw fa-home" ></i> Trang chủ</a> 
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