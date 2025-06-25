<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<div class="header-container">
	         <div class="logo">
	             <i class="fas fa-users logo-icon"></i>
	             <h1>职工管理系统</h1>
	         </div>
	         <ul class="nav-links" >
	       <c:if test="${username == null }">
	        <li><a href="login.jsp"><i class="fas fa-sign-in-alt"></i> 登录</a></li>
	        <li><a href="register.jsp"><i class="fas fa-user-plus"></i> 注册</a></li>
	       </c:if>
	       <c:if test="${username != null}">
	       	<li><a href="#">${username }</a></li>
	        <li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    我的 <span class="caret"></span>
			  </a>
			  <ul class="dropdown-menu">
			    <li><a href="#">我的信息</a></li>
			    <li><a href="#">我的部门</a></li>
			    <li class="divider" role="separator"></li>
			    <li><a href="loginout">退出</a></li>
			  </ul>
			</li>
	       </c:if>
	     </ul>
	     </div>
	</header>
</body>
</html>