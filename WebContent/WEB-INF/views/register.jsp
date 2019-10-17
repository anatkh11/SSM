<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- 引入Spring的form表单标签 -->
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="emp" method="POST" modelAttribute="myEmp">
		员工姓名：<form:input path="employeeName"></form:input><br><br>
		员工性别：<form:radiobuttons path="employeeGender" items="${genderList }"/><br><br>
		所属部门：<form:select path="dept.deptId" items="${deptList }" itemLabel="deptName" itemValue="deptId"></form:select><br><br>
		<input type="submit" value="注册">
	
	</form:form>




</body>
</html>








