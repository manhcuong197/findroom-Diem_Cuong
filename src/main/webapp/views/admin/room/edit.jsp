<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-room" />
<c:url var="NewURL" value="/admin-room-list?type=list" />
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
								<label class="col-sm-3 control-label no-padding-right">Kiểu
									Phòng</label>
								<div class="col-sm-9">
									<select class="form-control" id="typeRoom" name="typeRoom">
									
										<c:if test="${empty room.typeRoom}">
											<option>Loại phòng</option>
											<c:forEach var="type1" items="${type}">
												<option value="${type1.type_room}">${type1.type_room}</option>
											</c:forEach>
										</c:if>
										<c:if test="${not empty room.typeRoom}">
											<option>Loại phòng</option>
											<c:forEach var="type1" items="${type}">		
												<option value="${type1.type_room}" <c:if test="${type1.type_room == room.typeRoom}">selected="selected"</c:if>>
													${type1.type_room}
												</option>
											</c:forEach>
										</c:if>
									</select>
								
								</div>
							</div>
							<br/><br/><br/>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Số nhà
									</label>
								<div class="col-sm-9">
									<select class="form-control" id="typeRoom" name="numberRoom">
									
										<c:if test="${empty room.numberRoom}">
											<option>Số nhà</option>
											<c:forEach var="add" items="${address}">
												<option value="${add.number}">${add.number}</option>
											</c:forEach>
										</c:if>
										<c:if test="${not empty room.numberRoom}">
											
											<c:forEach var="add" items="${address}">		
												<option value="${add.number}" <c:if test="${add.number == room.numberRoom}">selected="selected"</c:if>>
													${add.number}
												</option>
											</c:forEach>
										</c:if>
									</select>
								
								</div>
							</div>
							<br/><br/>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Xã
									</label>
								<div class="col-sm-9">
									<select class="form-control" id="streetRoom" name="streetRoom">
									
										<c:if test="${empty room.streetRoom}">
											<option>Xã</option>
											<c:forEach var="add" items="${address}">
												<option value="${add.street}">${add.street}</option>
											</c:forEach>
										</c:if>
										<c:if test="${not empty room.streetRoom}">
											
											<c:forEach var="add" items="${address}">		
												<option value="${add.street}" <c:if test="${add.street == room.streetRoom}">selected="selected"</c:if>>
													${add.street}
												</option>
											</c:forEach>
										</c:if>
									</select>
								
								</div>
							</div>
							<br/><br/>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Huyện
									</label>
								<div class="col-sm-9">
									<select class="form-control" id="districtRoom" name="districtRoom">
									
										<c:if test="${empty room.districtRoom}">
											<option>Huyện</option>
											<c:forEach var="add" items="${address}">
												<option value="${add.district}">${add.district}</option>
											</c:forEach>
										</c:if>
										<c:if test="${not empty room.districtRoom}">
											
											<c:forEach var="add" items="${address}">		
												<option value="${add.district}" <c:if test="${add.street == room.districtRoom}">selected="selected"</c:if>>
													${add.district}
												</option>
											</c:forEach>
										</c:if>
									</select>
								
								</div>
							</div>
							<br/><br/>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Thành Phố
									</label>
								<div class="col-sm-9">
									<select class="form-control" id="cityRoom" name="cityRoom">
									
										<c:if test="${empty room.cityRoom}">
											<option>Thành Phố</option>
											<c:forEach var="add" items="${address}">
												<option value="${add.city}">${add.city}</option>
											</c:forEach>
										</c:if>
										<c:if test="${not empty room.cityRoom}">
											
											<c:forEach var="add" items="${address}">
													
												<option value="${add.city}" <c:if test="${add.city == room.cityRoom}">selected="selected"</c:if>>
													${add.city}
												</option>
											</c:forEach>
										</c:if>
									</select>
								
								</div>
							</div>
							<br/><br/>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Giá Cả
									</label>
								<div class="col-sm-9">
									<input type="text"  class="form-control" id="price" name="price"
										value="${room.price}" >
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Tiền điện
									</label>
								<div class="col-sm-9">
									<input type="text"  class="form-control" id="electricity" name="electricity"
										value="${room.electricity}" >
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Tiền nước
									</label>
								<div class="col-sm-9">
									<input type="text"  class="form-control" id="water" name="water"
										value="${room.water}" >
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Diện tích
									</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="area"
										name="area" value="${room.area}" />
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Phòng bếp
									</label>
								<div class="col-sm-9">
									<select name="kitchen" class="form-control">
										<option>${room.kitchen}</option>
										<option>Khu bếp riêng</option>
										<option>Khu bếp chung</option>
										<option>Không nấu ăn</option>
									</select>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Phòng tắm
									</label>
								<div class="col-sm-9">
									<select name="bathroom" class="form-control">
										<option>${room.bathroom }</option>
										<option>Khép kín</option>
										<option>Chung</option>
									</select>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Điều hòa
									</label>
								<div class="col-sm-9">
									<select name="air_conditioning" class="form-control">
										<option>${room.air_conditioning }</option>
										<option>Có</option>
										<option>Không</option>
									</select>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Ban công
									</label>
								<div class="col-sm-9">
									<select name="balcony" class="form-control">
										<option>${room.balcony }</option>
										<option>Có</option>
										<option>Không</option>
									</select>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Trạng thái
									</label>
								<div class="col-sm-9">
									<select name="status" class="form-control">
										<option>${room.status }</option>
										<option>Còn phòng</option>
										<option>Hết phòng</option>
									</select>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Mô tả
									</label>
								<div class="col-sm-9">
									<textarea rows="" cols="" id="description" name="description"
										style="width: 945px; height: 50px">${room.description}</textarea>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Ảnh
									</label>
								<div class="col-sm-9">
									<input type="text"  class="form-control" id="image" name="image"
										value="${room.image}" />
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">post_time
									</label>
								<div class="col-sm-9">
									<input type="text"  class="form-control" id="post_time" name="post_time"
										value="${room.post_time}" >
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<div class="col-sm-12">
									<c:if test="${not empty room.id}">
										<input type="submit"
											class="btn btn-white btn-warning btn-bold"
											value="Cập nhật Phòng" id="btnAddOrUpdateNew" />
									</c:if>
									<c:if test="${empty room.id}">
										<input type="submit"
											class="btn btn-white btn-warning btn-bold"
											value="Thêm Phòng" id="btnAddOrUpdateNew" />
									</c:if>
								</div>
							</div>
							<input type="hidden" value="${room.id}" id="id" name="id" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		
		$('#btnAddOrUpdateNew').click(function() {
			
			var data = {};
			var formData = $('#formSubmit').serializeArray();
			$.each(formData, function(i, v) {
				data["" + v.name + ""] = v.value;
			});
			console.log(data);
			var id = $('#id').val();
			if (id == "") {
				addRoom(data);
			} else {
				updateRoom(data);
			}
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
							window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";
						}
					});
		}
		function updateRoom(data) {
			
					$.ajax({
						url : '${APIurl}',
						type : 'PUT',
						contentType : 'application/json',
						data : JSON.stringify(data),
						dataType : 'json',
						success : function(result) {
							window.location.href = "${NewURL}";
						},
						error : function(error) {
							window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";
						}
					});
		}
	</script>
</body>
</html>
