<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>职工管理系统 - 后台管理</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <script type="text/javascript" src="bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
    <jsp:include page="admin-css.jsp"></jsp:include>
</head>
<body>
    <jsp:include page="sidebar.jsp"></jsp:include>
    
    <!-- 主内容区域 -->
    <div class="main-content">
        <!-- 顶部导航 -->
        <div class="top-nav">
            <div class="search-bar">
                <i class="fas fa-search"></i>
                <input type="text" placeholder="搜索职工、部门或职位...">
            </div>
            
            <div class="user-info">
                <div class="notifications">
                    <i class="fas fa-bell"></i>
                </div>
                <div class="user-avatar">${username.charAt(0)}</div>
                <div class="user-name">${username}</div>
            </div>
        </div>
        
        <!-- 动态内容区域 -->
        <div class="col-md-10" style="padding-left: 66px;padding-top: 30px;text-align: center;">
			<h1>欢迎使用后台管理系统</h1>
		</div>
    </div>

</body>
</html>