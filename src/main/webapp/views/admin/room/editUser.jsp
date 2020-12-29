<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-user" />
<c:url var="NewURL" value="/admin-user-list?type=listUser" />
<html>
<head>
<title>Cập nhật thông tin Phòng trọ</title>
</head>
<body>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Trang
							chủ</a></li>
					<li class="active">Chỉnh sửa phòng trọ</li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<c:if test="${not empty messageResponse}">
							<div class="alert alert-${alert}">${messageResponse}</div>
						</c:if>
						<form id="formSubmit">



							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Tài khoản
								</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="username"
										name="username" value="${user.username}">
								</div>
							</div><br />
							<br /><br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Chức năng
									</label>
								<div class="col-sm-9">
									<select class="form-control" id="roleUser" name="roleUser">

										<c:if test="${empty user.roleUser}">
											<option>Chức năng</option>
											<c:forEach var="role1" items="${role}">
												<option value="${role1.role_user}">${role1.role_user}</option>
											</c:forEach>
										</c:if>
										<c:if test="${not empty user.roleUser}">
											<option>Chức năng</option>
											<c:forEach var="role1" items="${role}">
												<option value="${role1.role_user}"
													<c:if test="${role1.role_user == user.roleUser}">selected="selected"</c:if>>
													${role1.role_user}</option>
											</c:forEach>
										</c:if>
									</select>

								</div>
							</div>
							<br />
							<br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Mật khẩu
								</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="password"
										name="password" value="${user.password}">
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Số điện thoại
								</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="phone" name="phone"
										value="${user.phone}">
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Email
								</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="email" name="email"
										value="${user.email}">
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Địa chỉ
								</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="address"
										name="address" value="${user.address}">
								</div>
							</div><br />
							<br />

							<div class="form-group">
								<div class="col-sm-12">
									<c:if test="${not empty user.id}">
										<input type="submit"
											class="btn btn-white btn-warning btn-bold"
											value="Cập nhật tài khoản" id="btnAddOrUpdateNew" />
									</c:if>
									<c:if test="${empty user.id}">
										<input type="submit"
											class="btn btn-white btn-warning btn-bold" value="Thêm Tài khoản"
											id="btnAddOrUpdateNew" />
									</c:if>
								</div>
							</div>
							<input type="hidden" value="${user.id}" id="id" name="id" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$('#btnAddOrUpdateNew').click(function(e) {
			e.preventDefault();
			var data = {};
			var formData = $('#formSubmit').serializeArray();
			$.each(formData, function(i, v) {
				data["" + v.name + ""] = v.value;
			});
			console.log(data);
			var id = $('#id').val();
			if (id == "") {
				addUser(data);
			} else {
				updateUser(data);
			}
		});
		function addUser(data) {
			$
					.ajax({
						url : '${APIurl}',
						type : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(data),
						dataType : 'json',
						success : function(result) {
							window.location.href = "${NewURL}";

						},
						error : function(error) {
							window.location.href = "";
						}
					});
		}
		function updateUser(data) {

			$
					.ajax({
						url : '${APIurl}',
						type : 'PUT',
						contentType : 'application/json',
						data : JSON.stringify(data),
						dataType : 'json',
						success : function(result) {
							window.location.href = "${NewURL}";
						},
						error : function(error) {
							window.location.href = "";
						}
					});
		}
	</script>
</body>
</html>
