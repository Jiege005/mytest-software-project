<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .nav-links a {
            color: rgba(255, 255, 255, 0.9);
            text-decoration: none;
            font-weight: 500;
            padding: 0.5rem 0.75rem;
            border-radius: 4px;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        
        .nav-links a:hover {
            background: rgba(255, 255, 255, 0.15);
        }
        
        .nav-links a i {
            font-size: 1.1rem;
        }
        
        li{
        	list-style-type: none;
        }
		
		/*下拉菜单样式 */
		.nav-links .dropdown-menu {
		  display: none;
		  position: absolute;
		  background: white;
		  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
		  border: none;
		  border-radius: 4px;
		  margin-top: 5px;
		}
		
		.nav-links .dropdown-menu a {
		  color: #333 !important;
		  padding: 10px 20px;
		}
		
		.nav-links .dropdown.open .dropdown-menu {
		  display: block;
		}
		
		.nav-links .dropdown-menu li:hover {
		  background: #f5f5f5;
		}
		
		.divider {
		  height: 1px;
		  background: #eee;
		  margin: 5px 0;
		}
        
</style>
</head>
<body>
	<header style="background: linear-gradient(135deg, var(--primary), var(--primary-dark));
		            color: white;
		            padding: 1rem 0;
		            position: sticky;
		            top: 0;
		            z-index: 100;">
		<div style="max-width: 1200px;
		            margin: 0 auto;
		            padding: 0 2rem;
		            display: flex;
		            justify-content: space-between;
		            align-items: center;">
	         <div class="logo" style="display: flex;align-items: center;gap: 0.75rem;">
	             <i class="fas fa-users logo-icon" style="font-size: 2rem;color: #fff;"></i>
	             <h1 style="font-size: 1.5rem;font-weight: 600;">职工管理系统</h1>
	         </div>
	         <ul class="nav-links" style="display: flex;gap: 1.5rem;">
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