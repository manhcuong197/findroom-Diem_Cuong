<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-user" />
<c:url var="NewURL" value="/admin-user-list?type=listUser" />
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
					<div class="col-xs-12">
					<div class="widget-box table-filter">
						<div class="table-btn-controls">
							<div class="pull-right tableTools-container">
								<div class="dt-buttons btn-overlap btn-group">
									<a flag="info"
										class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
										data-toggle="tooltip" title='Thêm Phòng Trọ'
										href='<c:url value="/admin-user-list?type=editUser"/>'> <span>
											<i class="fa fa-plus-circle bigger-110 purple"></i>
									</span>
									</a>
									<button id="btnDelete" type="button"
										class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
										data-toggle="tooltip" title='Xóa Phòng'>
										<span> <i class="fa fa-trash-o bigger-110 pink"></i>
										</span>
									</button>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<div class="table-responsive">
								<table class="table table-bordered">
									<thead>

										<tr>
											<th><input type="checkbox" id="checkAll"></th>
											
											<th>Tên tài khoản</th>
											<th>Mật khẩu</th>
											<th>Số điện thoại</th>
											<th>Email</th>
											<th>Địa chỉ</th>
											<th>Thay đổi</th>
										</tr>
									</thead>
									<c:forEach var="item" items="${user.listResult }">
										<tbody>
											<td><input type="checkbox" id="checkbox_${item.id}" value="${item.id}"></td>
											<td>${item.username}</td>
											<td>${item.password}</td>
											<td>${item.phone }</td>
											<td>${item.email}</td>
											<td>${item.address }</td>
											<td><c:url var="editURL" value="/admin-user-list">
													<c:param name="type" value="editUser" />
													<c:param name="id" value="${item.id }" />
												</c:url> <a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip" href='${editURL }'><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
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
	<script>
			
			$("#btnDelete").click(function() {
				var data = {};
				var ids = $('tbody input[type=checkbox]:checked').map(function () {
		            return $(this).val();
		        }).get();
				data['ids'] = ids;
				deleteRoom(data);
			});
			
			function deleteRoom(data) {
		        $.ajax({
		            url: '${APIurl}',
		            type: 'DELETE',
		            contentType: 'application/json',
		            data: JSON.stringify(data),
		            success: function (result) {
		                window.location.href = "${NewURL}";
		            },
		            error: function (error) {
		            	window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";
		            }
		        });
		    }
		</script>
</body>
</html>