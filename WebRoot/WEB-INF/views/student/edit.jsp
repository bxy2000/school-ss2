<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<jsp:include page="../share/_header.jsp"></jsp:include>
<title>编辑</title>
</head>
<body>
	<jsp:include page="../share/_top.jsp" />

	<div class="container">
		<div class="row">
			<div class="col-md-offset-3 col-md-6">
				<h2 class="page-header">编辑</h2>
				<div class="panel panel-default">
					<div class="panel-body">
						<form class="form-horizontal" action="${pageContext.request.contextPath}/admin/student/save" method="post">
							<div class="form-group">
								<input type="hidden" name="student.id" value="${student.id }" />
								<label for="studentNumber" class="col-md-2 control-label">学号</label>
								<div class="col-md-10">
									<input type="text" id="studentNumber" name="student.studentNumber" value="${student.studentNumber }" placeholder="学号" class="form-control" required="required" />
								</div>
							</div>
							<div class="form-group">
								<label for="studentName" class="col-md-2 control-label">姓名</label>
								<div class="col-md-10">
									<input type="text" id="student.studentName" name="student.studentName" value="${student.studentName }" placeholder="姓名" class="form-control" required="required" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">性别</label>
								<div class="col-md-10">
									<div class="radio">
										<c:choose>
											<c:when test="${student.gender == '男' }">
												<label> 
													<input type="radio" id="gender" name="student.gender" value="男" checked="checked">男
												</label>
												<label>
													<input type="radio" id="gender" name="student.gender" value="女">女
												</label>
											</c:when>
											<c:otherwise>
												<label> 
													<input type="radio" id="gender" name="student.gender" value="男">男
												</label>
												<label>
													<input type="radio" id="gender" name="student.gender" value="女" checked="checked">女
												</label>
											</c:otherwise>
										</c:choose>
										
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">出生日期</label>
								<div class="col-md-10">
									<div class='input-group date' id='birthday'>
										<input type='text' class="form-control" name="student.birthday" 
										value='<fmt:formatDate value="${student.birthday }" pattern="yyyy-MM-dd"/>'
										required="required"/>
										<span class="input-group-addon">
											<span class="glyphicon glyphicon-calendar"></span>
										</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="email" class="col-md-2 control-label">邮箱</label>
								<div class="col-md-10">
									<input type="email" id="email" name="student.email" value="${student.email }" placeholder="邮箱" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label for="mobile" class="col-md-2 control-label">联系方式</label>
								<div class="col-md-10">
									<input type="text" id="mobile" name="student.mobile" value="${student.mobile }" placeholder="联系方式" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label for="province" class="col-md-2 control-label">省份</label>
								<div class="col-md-10">
									<select id="province" name="student.province" class="form-control">
										<option value="河南">河南</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="city" class="col-md-2 control-label">城市</label>
								<div class="col-md-10">
									<select id="province" name="student.city" class="form-control">
										<option value="郑州">郑州</option>
										<option value="开封">开封</option>
										<option value="洛阳">洛阳</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="address" class="col-md-2 control-label">详细地址</label>
								<div class="col-md-10">
									<input type="text" id="address" name="student.address" value="${student.address }" placeholder="详细地址" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-offset-2 col-md-10">
									<a href="${pageContext.request.contextPath }/admin/student/index" class="btn btn-default">取消</a>
									<button type="submit" class="btn btn-default">保存</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->

	<jsp:include page="../share/_footer.jsp" />

	<script type="text/javascript">
		$(function() {
			$('#birthday').datepicker({
				language : "zh-CN",
				format : 'yyyy-mm-dd',
				autoclose: true
			});
		});
	</script>
</body>
</html>