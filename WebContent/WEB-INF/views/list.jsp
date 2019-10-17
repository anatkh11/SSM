<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- 引入Jquery -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".deleteEmp").click(function(){
			var href =$(this).attr("href"); 
			$("#deleteForm").attr("action",href).submit();
			return false;
		})
	})
</script>

</head>
<body>
	<div class="container">
			<form action="" id="deleteForm" method="POST">
				<input type="hidden" name="_method" value="DELETE">
			</form>
			<div class="row">
				<nav class="navbar navbar-inverse">
					<h3>
						<center>
							<font color="white">基于 Spring+SpringMVC+Mybatis 的员工信息CRUD</font>
						</center>
					</h3>
				</nav>
			</div>
			<div class="row">
				<a href="emp">
				<button type="button" class="btn btn-success">
					<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
					新增
				</button>
				</a>
			</div>
			<div class="row">
				<div class=".col-md-8 .col-md-offset-2">
					<table class="table table-hover" style="text-align:center;">
						<tr>
							<td>员工编号</td>
							<td>员工姓名</td>
							<td>员工性别</td>
							<td>所属部门</td>
							<td>更新操作</td>
							<td>删除操作</td>
						</tr>
						<c:forEach items="${pageInfo.list }" var="emp">
							<tr>
								<td>${emp.employeeId }</td>
								<td>${emp.employeeName }</td>
								<td>${emp.employeeGender }</td>
								<td>${emp.dept.deptName }</td>
								<td><a href="#"><button type="button"
											class="btn btn-info btn-xs">
											<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
											更新
										</button></a></td>
								<td><a class="deleteEmp" href="emp/${emp.employeeId }"><button
											type="button" class="btn btn-danger btn-xs">
											<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
											删除
										</button></a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
			<div class="row">
				<center>
					<nav aria-label="Page navigation">
						<ul class="pagination">
						
							<c:if test="${pageInfo.pageNum==1 }">
								<li class="previous disabled"><a href="#" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							</c:if>
							<c:if test="${pageInfo.pageNum>1 }">
							<li><a href="emps?pageNum=${pageInfo.pageNum-1 }" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							</c:if>
							
								<c:forEach items="${pageInfo.navigatepageNums }" var="no">
									<c:if test="${pageInfo.pageNum==no }">
										<li class="active"><a href="emps?pageNum=${no }">${no }</a></li>
									</c:if>
									<c:if test="${pageInfo.pageNum!=no }">
										<li ><a href="emps?pageNum=${no }">${no }</a></li>
									</c:if>
								</c:forEach>
							<li><a href="emps?pageNum=${pageInfo.pageNum+1 }" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
					<a>当前：第${pageInfo.pageNum }页</a>   <a>总计：共${pageInfo.pages }页</a>    <a>总数据数：共${pageInfo.total }条</a>
				</center>
			</div>
		</div>
</body>
</html>









