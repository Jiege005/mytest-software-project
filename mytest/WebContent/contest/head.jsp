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
	<nav class="navbar navbar-default" style="margin-bottom: 2px;">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a href="#">
		      	<img src="images/logo.png" style="width: 50px;height: 50px;">
		      </a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="#">我的校友<span class="sr-only">(current)</span></a></li>
		        <li><a href="#">校园趣事</a></li>
		      </ul>
		      <form class="navbar-form navbar-left" style="margin-left: 270px;">
		        <div class="form-group">
		          <input type="text" style="width: 350px;" class="form-control" placeholder="学校名称">
		        </div>
		        <button type="submit" class="btn btn-default">搜索</button>
		      </form>
		      <ul class="nav navbar-nav navbar-right">
		        <c:if test="${username == null }">
			        <li><a href="login.jsp">登录</a></li>
			        <li><a href="schoollist">注册</a></li>
		        </c:if>
		        <c:if test="${username != null}">
		        	<li><a href="#">${username }</a></li>
			        <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的<span class="caret"></span></a>
			          <ul class="dropdown-menu">
			            <li><a href="#">我的校友</a></li>
			            <li><a href="#">校园趣事</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="loginout">退出</a></li>
			          </ul>
			        </li>
		        </c:if>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
	</nav>
</body>
</html>