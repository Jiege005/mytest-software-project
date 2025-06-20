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
				        <li><a href="#">登录</a></li>
				        <li><a href="#">注册</a></li>
				        <li class="dropdown">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的<span class="caret"></span></a>
				          <ul class="dropdown-menu">
				            <li><a href="#">我的校友</a></li>
				            <li><a href="#">校园趣事</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="#">退出</a></li>
				          </ul>
				        </li>
				      </ul>
				    </div><!-- /.navbar-collapse -->
				  </div><!-- /.container-fluid -->
				</nav>
		</div>    
		
		<div class="container" style="margin-top: 100px;">     
		   <div class="row">
		   		<div class="col-md-8">
		   			<h3>用户注册<small>用户管理 <span style="color:red;">${info }</span></small></h3><hr>
		   			<div class="row">
						 <form class="form-horizontal" action="register" method="post">
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
							  	<label for="inputPassword3" class="col-sm-2 control-label">性别</label>
							    <div class="col-sm-10">
							        <label class="radio-inline">
									  <input type="radio" name="sex" id="inlineRadio1" checked value="1"> 男
									</label>
									<label class="radio-inline">
									  <input type="radio" name="sex" id="inlineRadio2" value="2"> 女
									</label>
							    </div>
							  </div>
							   <div class="form-group">
							    <label for="inputEmail3" class="col-sm-2 control-label">所在学校</label>
							    <div class="col-sm-10">
							       <select class="form-control" name="sid">
									  <option value="1">长理</option>
									  <option value="2">湖大</option>
									  <option value="3">中南</option>
									  <option value="4">国防科大</option>
									  <option value="5">湖南师大</option>
									  <option value="6">其他</option>
									</select>
							    </div>
							  </div>
							  <div class="form-group">
							    <div class="col-sm-offset-2 col-sm-10">
							      <button type="submit" class="btn btn-default">注册</button>
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
		
		<div class="container-fluid text-center" style="background-color: #dbdbdb;padding-top: 20px;margin-top: 200px;">
		  	<p>© 2005-2025 ft.com, all rights reserved 方图教育</p>
		  	<p>违法和不良信息/涉未成年人/生活服务类专项有害信息投诉：13787134545</p>
		</div>
	</body>
</html>