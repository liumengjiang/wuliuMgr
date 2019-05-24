<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改</title>
<%@ include file="/comm.jsp"%>
<script type="text/javascript">
$(function(){

	
	$("#start").datetimepicker({
		format: 'yyyy-mm-dd',
	language:'zh-CN',
	minView:2,
	startDate:new Date()
	});

	
	});
</script>
</head>
<body>
	<form class="form-horizontal" action="/editCarRecord.do" method="post">
<input type="hidden" value="${carRecord.waybillid }"
						class="form-control" id="start" name="waybillid"   >
		<div class="form-group">
			<label class="col-sm-2 control-label">出车日期</label>
			<div class="col-sm-10">
				<input type="text" value='<fmt:formatDate value="${carRecord.recorddate}"
									pattern="yyyy-MM-dd" />'
						class="form-control" id="start" name="recorddate"   >
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">出车车牌</label>
			<div class="col-sm-10">
				<select id="carnumber" name="carnumber"
						class="form-control">
						<option value="-1">请选择</option>
						<c:forEach items="${trucklist}" var="truck">
							<c:choose>
								<c:when test="${truck.carnumber}">
									<option selected="selected" value="${truck.id}">${truck.carnumber}</option>
								</c:when>
								<c:otherwise>
									<option value="${truck.id}">${truck.carnumber}</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>	
					</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">司机姓名</label>
			<div class="col-sm-10">
			<select id="dname" name="dname"
						class="form-control">
			
										<option value="-1">请选择</option>
						<c:forEach items="${driverList}" var="driver">
							<c:choose>
								<c:when test="${driver.dname}">
									<option selected="selected" value="${driver.id}">${driver.dname}</option>
								</c:when>
								<c:otherwise>
									<option value="${driver.id}">${driver.dname}</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>	
					</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">提货地</label>
			<div class="col-sm-10">
				<input value="${carRecord.pickupplace }" name="pickupplace" type="text" class="form-control" placeholder="请输入">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">目的地</label>
			<div class="col-sm-10">
				<input name="destination" value="${carRecord.destination }" type="text" class="form-control" placeholder="请输入">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">客户姓名</label>
			<div class="col-sm-10">
				<input name="customname" value="${carRecord.customname }" type="text" class="form-control" placeholder="请输入">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">客户电话</label>
			<div class="col-sm-10">
				<input name="customphone" value="${carRecord.customphone }" type="text" class="form-control" placeholder="请输入">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">费用</label>
			<div class="col-sm-10">
				<input name="cost" type="text" value="${carRecord.cost } " class="form-control" placeholder="请输入">
			</div>
		</div>
 		<div class="form-group">
			<label class="col-sm-2 control-label">出车状态</label>
			<div class="col-sm-10">
				<!-- <input name="cid" type="text" value='' class="form-control" placeholder=""> -->
				<select name="cid">
				<option value="27" ${carRecord.state=='0'?'selected':''} >下单</option>
				<option value="26" ${carRecord.state=='1'?'selected':''}>出车</option>
				<option value="25" ${carRecord.state=='2'?'selected':''}>完成</option>
				<option value="24" ${carRecord.state=='-1'?'selected':''}>取消</option>
			</select>
			
			</div>
		</div>

		<DIV class=buttons>
							<INPUT value=立即修改 type="submit">
						</DIV>
	</form>
</body>
</html>