<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
<script type="text/javascript">
	$(function(){
		$("#changeButton").click(function(){
			/* $("#username").attr("value","lisi"); */
			$("#testForm").submit();
		})
		
	})





</script>
	<input type="text" id="username" name="usernames" class="username2" value="zhangsan">
	<input type="button" id="changeButton" value="更改">
	
	<form action="heilongjiangkejidaxue" id="testForm" method="get">
	</form>





</body>
</html>










