<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>我的校园</title>
		<link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
		<script type="text/javascript" src="bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
		<script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
		<style type="text/css">
			li{
				line-height: 35px;
			}
		</style>
	</head>
	<body>
		<div class="container-fluid">
		      <jsp:include page="head.jsp"></jsp:include>
		</div>    
		
		<div class="container" style="margin-top: 100px;">     
		   <div class="row">
		   		<div class="col-md-8">
		   			<h3>用户登录<small>用户管理 <span style="color:red;">${info }</span></small></h3><hr>
		   			<div class="row">
						 <form class="form-horizontal" action="login" method="post">
							  <div class="form-group">
							    <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
							    <div class="col-sm-10">
							      <input type="text" name="username" class="form-control" id="inputEmail3" placeholder="用户名">
							    </div>
							  </div>
							  <div class="form-group">
							    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
							    <div class="col-sm-10">
							      <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="Password">
							    </div>
							  </div>
							  <div class="form-group">
							    <div class="col-sm-offset-2 col-sm-10">
							      <button type="submit" class="btn btn-default">登录</button>
							    </div>
							  </div>
							</form>  
					</div>
		   		</div>
  				<div class="col-md-4" style="padding-left: 66px;padding-top: 30px;">
  					<h4><span class="glyphicon glyphicon-tags" aria-hidden="true"></span>&nbsp;校园趣事</h4>
  					<hr>
  					<ol>
  						<li>美国防部：美军仍然保持着防御态势</li>
  						<li>美国防部：美军仍然保持着防御态势</li>
  						<li>美国防部：美军仍然保持着防御态势</li>
  						<li>美国防部：美军仍然保持着防御态势</li>
  						<li>美国防部：美军仍然保持着防御态势</li>
  						<li>美国防部：美军仍然保持着防御态势</li>
  						<li>美国防部：美军仍然保持着防御态势</li>
  						<li>美国防部：美军仍然保持着防御态势</li>
  						<li>美国防部：美军仍然保持着防御态势</li>
  					</ol>
  				</div>
		   </div>
		</div>
		
		<div style="margin-top: 200px;">
		  	 <jsp:include page="footer.jsp"></jsp:include>
		</div>
	</body>
</html>