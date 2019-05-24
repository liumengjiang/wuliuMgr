<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
</head>
<%@ include file="/comm.jsp"%>
<script type="text/javascript">
	$(function() {
		$("#btn").click(function() {
			if (confirm("你确认要退出么?")) {
				location.href = "/logout.do";
			}
		});
		$("#start").datetimepicker({
			format : 'yyyy-mm-dd',
			language : 'zh-CN',
			minView : 2,
			endDate : new Date()
		});
		$("#end").datetimepicker({
			format : 'yyyy-mm-dd',
			language : 'zh-CN',
			minView : 2,
			startDate : new Date()
		});
	})
</script>
<body>
	<div class="container">
		<div class="page-header">
			<h1>欢迎:${user.username}</h1>
			<input type="button" class="btn btn-success" id="btn" value="退出">
		</div>

		<div>
			<form action="/queryByC.do" id="queryForm" class="form-inline">
				<div class="form-group">
					<label for="job">运单号</label> <select id="waybillid" name="waybillid"
						class="form-control">
						<option value="">全部</option>
						<c:forEach items="${page.dates}" var="result">
							<c:choose>
								<c:when test="${result.waybillid==condition.waybillid}">
									<option selected="selected" value="${result.waybillid}">${result.waybillid}</option>
								</c:when>
								<c:otherwise>
									<option value="${result.waybillid}">${result.waybillid}</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label for="dname">司机</label> <select id="dname" name="dname"
						class="form-control">

						<option value="">请选择</option>
						<c:forEach items="${driverList}" var="driver">
							<c:choose>
								<c:when test="${driver.dname==condition.dname}">
									<option selected="selected" value="${driver.dname}">${driver.dname}</option>
								</c:when>
								<c:otherwise>
									<option value="${driver.dname}">${driver.dname}</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label for="time">开始时间</label> <input type="text"
						class="form-control" id="start" name="startDate"
						readonly="readonly" value=""> 到 <input type="text"
						class="form-control" id="end" name="endDate" readonly="readonly"
						value="">
				</div>
				<div class="form-group"></div>

				<input type="hidden" name="pageIndex" value="1" id="hidden">
				<button type="submit" class="btn btn-success">查询</button>
				<div class="table-bordered">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>运单号</th>
								<th>出车日期</th>
								<th>出车车牌</th>
								<th>司机姓名</th>
								<th>提货地</th>
								<th>目的地</th>
								<th>客户名称</th>
								<th>客户电话</th>
								<th>费用</th>
								<th>出车状态</th>
								<th>下单员姓名</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${page.dates}" var="result">
								<tr>
									<td>${result.waybillid}</td>
									<td><fmt:formatDate value="${result.recorddate}"
											pattern="yyyy-MM-dd" /></td>
									<td>${result.carnumber}</td>
									<td>${result.dname}</td>
									<td>${result.pickupplace}</td>
									<td>${result.destination}</td>
									<td>${result.customname}</td>
									<td>${result.customphone}</td>
									<td>${result.cost}</td>

									<td><c:choose>
											<c:when test="${result.state==-1}">
									取消
								</c:when>
											<c:when test="${result.state==0}">
									下单
								</c:when>
											<c:when test="${result.state==2}">
									完成
								</c:when>
											<c:otherwise>
									出车
								</c:otherwise>
										</c:choose></td>
									<td>${result.name}</td>


									<td><a type="button"
										href="/getCarRecord.do?waybillid=${result.waybillid}"
										class="btn btn-info btn-sm"> <span
											class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
											编辑
									</a>
								</tr>
							</c:forEach>
						</tbody>

					</table>
				</div>
				<div align="center">
					<ul class="pagination">
						<c:choose>
							<c:when test="${page.index==1 }">
								<li class="disabled"><a href="#">首页</a></li>
								<li class="disabled"><a href="#">上一页</a></li>
							</c:when>
							<c:otherwise>
								<li><a class="ye" ma="1">首页</a></li>
								<li><a class="ye" ma="${page.index-1}">上一页</a></li>
							</c:otherwise>
						</c:choose>
						<c:set var="tou" value="1" />
						<c:set var="wei" value="${page.total}" />
						<c:if test="${page.total >=5 }">
							<c:set var="tou" value="${page.index -2 }" />
							<c:set var="wei" value="${page.index +2 }" />
							<c:if test="${tou<1 }">
								<c:set var="tou" value="1" />
								<c:set var="wei" value="5" />
							</c:if>
							<c:if test="${wei>page.total }">
								<c:set var="tou" value="${page.total-4 }" />
								<c:set var="wei" value="${page.total}" />
							</c:if>
						</c:if>
						<c:forEach begin="${tou}" end="${wei}" var="i">
							<c:choose>
								<c:when test="${page.index == i}">
									<li class="active"><a href="#">${page.index}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="#" class="ye" ma="${i}">${i}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>

						<c:choose>
							<c:when test="${page.index == page.total }">
								<li class="disabled"><a href="#">下一页</a></li>
								<li class="disabled"><a href="#">尾页</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="#" class="ye" ma="${page.index+1}">下一页</a></li>
								<li><a href="#" class="ye" ma="${page.total}">尾页</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
		
		<!-- <input id="hidden" type="hidden" name="pageIndex" value="1"> -->
		<script>
			$(function() {
				$(".ye").click(function() {
					$("#hidden").val($(this).attr("ma"));
					$("form").submit();
				});
			});
		</script>
		</form>
</div>
	</div>

	<%-- 		<tfoot>
			<tr>
				<a href="carrecord.do?pageNo=${pageInfo.firstPage}">第一页</a>
				<c:if test="${pageInfo.hasPreviousPage }">
					<a href="carrecord.do?pageNo=${pageInfo.pageNum-1}">上一页</a>
				</c:if>

				<c:if test="${pageInfo.hasNextPage }">
					<a href="carrecord.do?pageNo=${pageInfo.pageNum+1}">下一页</a>
				</c:if>

				<a href="carrecord.do?pageNo=${pageInfo.lastPage}">最后页</a>
			</tr>
		</tfoot>
		<span>当前 ${pageInfo.pageNum }页,总${pageInfo.pages } 页,总
			${pageInfo.total } 条记录</span> --%>
	<div class="row">
		<div class="col-md-4 col-md-offset-8">
			<a class="btn btn-primary" href="/toAdd.do">新增</a>
		</div>
	</div>

</body>
</html>