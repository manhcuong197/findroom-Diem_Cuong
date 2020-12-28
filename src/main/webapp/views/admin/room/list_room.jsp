<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>
</head>
<body>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Trang
							chủ</a></li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<div class"col-xs-12">
						<div class="row">
							<div class="col-xs-12">
								<div class="table-responsive">
									<table class="table table-bordered">
									    <thead>
									    
									      <tr>
									        <th>Ảnh</th>
									        <th>Mô tả</th>
									        <th>Thông tin phòng</th>
									        <th> Trạng thái</th>
									        <th></th>
									      </tr>
									    </thead>
									    <c:forEach var="item" items="${room.listResult }">
									    <tbody>
									      	<td>${item.image}</td>
									      	<td>${item.description}</td>
									      	<td>Giá tiền:${item.price} triệu/tháng, Diện tích:${item.area}m<sup>2</sup></td>
									      	<td>${item.status}</td>
									      	<td>edit</td>
									    </tbody>
									    </c:forEach>
									  </table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.main-content -->
</body>
</html>