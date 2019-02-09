<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/reg.js" type="text/javascript"> </script>
<link href="css/style.css" type="text/css" rel="stylesheet">
<link href="css/reg.css" type="text/css" rel="stylesheet">
<title>Create new User</title>
</head>
<body>
	<div id="wrapper">
<%@ include file="navi.jsp"%>
		<div id="content">
		<div id="forma1">sdfsdfdfs</div>
			<div id="forma">
				<form onsubmit="return regDataCheck(regForma)" action="addingUser" method="post" name="regForma">
						<a>Введите ник</a>
						<input type="text" name="uname">
						 <br>
						 <br>
						<a>Введите пароль</a>  <input type="text" name="upass">
						 <br>
						 <br>
						<a>Введите почту</a>  <input type="text" name="umail">
						 <br>
						 <br>
						<input type="submit" value="Create">
				</form> 
						<c:forEach items="${errMessage}" var="err">
          			    <p>${err}</p><br>
          			    </c:forEach>
			</div>
		</div>
	</div>
</body>
</html>