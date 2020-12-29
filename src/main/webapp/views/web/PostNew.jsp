<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-web-post" />
<c:url var="NewURL" value="/trang-chu" />
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
								<label class="col-sm-3 control-label no-padding-right">Người
									đăng </label>
								<div class="col-sm-9">
										<input type="text" class="form-control" name="userNameRoom"
											id="userNameRoom" >

								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Kiểu
									Phòng</label>
								<div class="col-sm-9">
									<select class="form-control" id="typeRoom" name="typeRoom">
										<option>Phòng trọ</option>
										<option>Chung cư</option>
										<option>Chưng cư mini</option>
										<option>Chung cư nguyên căn</option>

									</select>

								</div>
							</div>
							<br /> <br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Số
									nhà </label>
									<input type="text" class="form-control" name="numberRoom"
											id="numberRoom" >
								<div class="col-sm-9"></div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Xã
								</label>
								<input type="text" class="form-control" name="streetRoom"
											id="street" >
								<div class="col-sm-9"></div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Huyện
								</label>
								<input type="text" class="form-control" name="districtRoom"
											id="districtRoom" >
								<div class="col-sm-9"></div>
							</div>
							
							<br /> <br />
										
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Thành
									Phố </label>
								<div class="col-sm-9">
									<select class="form-control" id="cityRoom" name="cityRoom">
										<option>Hà Nội</option>
										<option>Hải Phòng</option>
										<option>Đà Nẵng</option>
										<option>Nam Định</option>
										<option>Hà Nam</option>
									</select>

								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Giá
									Cả </label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="price" name="price">
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Tiền
									điện </label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="electricity"
										name="electricity">
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Tiền
									nước </label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="water" name="water">
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Diện
									tích </label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="area" name="area" />
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Phòng
									bếp </label>
								<div class="col-sm-9">
									<select name="kitchen" class="form-control">

										<option>Khu bếp riêng</option>
										<option>Khu bếp chung</option>
										<option>Không nấu ăn</option>
									</select>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Phòng
									tắm </label>
								<div class="col-sm-9">
									<select name="bathroom" class="form-control">

										<option>Khép kín</option>
										<option>Chung</option>
									</select>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Điều
									hòa </label>
								<div class="col-sm-9">
									<select name="air_conditioning" class="form-control">

										<option>Có</option>
										<option>Không</option>
									</select>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Ban
									công </label>
								<div class="col-sm-9">
									<select name="balcony" class="form-control">

										<option>Có</option>
										<option>Không</option>
									</select>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Trạng
									thái </label>
								<div class="col-sm-9">
									<select name="status" class="form-control">

										<option>Còn phòng</option>
										<option>Hết phòng</option>
									</select>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Mô
									tả </label>
								<div class="col-sm-9">
									<input type"text" rows="" cols="" id="description" name="description"
										style="width: 945px; height: 50px"></input>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Ảnh
								</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="image" name="image"
										 />
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">post_time
								</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="post_time"
										name="post_time">
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<div class="col-sm-12">

									<input type="submit" class="btn btn-white btn-warning btn-bold"
										value="Thêm Phòng" id="btnAddOrUpdateNew" />

								</div>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="<c:url value='/template/vendor/jquery-3.5.1.min.js' />"></script>
	
	<script type="text/javascript">
		$('#btnAddOrUpdateNew').click(function(e) {
			e.preventDefault();
			var data = {};
			var formData = $('#formSubmit').serializeArray();
			$.each(formData, function(i, v) {
				data["" + v.name + ""] = v.value;
			});
			console.log(data);
			addRoom(data);
		});
		function addRoom(data) {
			
					$.ajax({
						url : '${APIurl}',
						type : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(data),
						dataType : 'json',
						success : function(result) {
							window.location.href = "${NewURL}";

						},
						error : function(error) {
							window.location.href = "${NewURL}";
						}
					});
		}
	</script>
</body>
</html>
