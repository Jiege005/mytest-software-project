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
				        <li><a href="register.jsp">注册</a></li>
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
				
				
				<!-- 轮播图 begin -->
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					  <!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
					    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
					  </ol>
					
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner" role="listbox">
					    <div class="item">
					      <img src="images/csust.jpg" width="100%" style="height: 300px;" alt="...">
					      <div class="carousel-caption">
					               心如
					      </div>
					    </div>
					    <div class="item active">
					      <img src="images/ad3.jpg" width="100%" style="height: 300px;" alt="...">
					      <div class="carousel-caption">
					              酒店
					      </div>
					    </div>
					    <div class="item">
					      <img src="images/ad3.jpg" width="100%" style="height: 300px;" alt="...">
					      <div class="carousel-caption">
					             电脑
					      </div>
					    </div>
					  </div>
					
					  <!-- Controls -->
					  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					    <span class="sr-only">Next</span>
					  </a>
				</div>
				<!-- 轮播图 end -->
		</div>    
		
		<div class="container">     
		   <div class="row">
		   		<div class="col-md-8">
		   			<h3>校友推荐<small>系统推荐</small></h3>
		   			<div class="row">
						  <div class="col-md-3">
						    <div class="thumbnail">
						      <img src="images/s1.png" class="img-rounded" alt="...">
						      <div class="caption">
						        <h3 style="margin-top: 0px;margin-bottom: 0px;">张三丰<small>长沙理工</small></h3>
						      </div>
						    </div>
						  </div>
						  <div class="col-sm-4 col-md-3">
						    <div class="thumbnail">
						      <img src="images/s2.png" class="img-rounded" alt="...">
						      <div class="caption">
						        <h3 style="margin-top: 0px;margin-bottom: 0px;">张三丰<small>长沙理工</small></h3>
						      </div>
						    </div>
						  </div>
						  <div class="col-sm-4 col-md-3">
						    <div class="thumbnail">
						      <img src="images/s1.png" class="img-rounded" alt="...">
						      <div class="caption">
						        <h3 style="margin-top: 0px;margin-bottom: 0px;">张三丰<small>长沙理工</small></h3>
						      </div>
						    </div>
						  </div>
						 
						  <div class="col-sm-4 col-md-3">
						    <div class="thumbnail">
						      <img src="images/s1.png" class="img-rounded" alt="...">
						      <div class="caption">
						        <h3 style="margin-top: 0px;margin-bottom: 0px;">张三丰<small>长沙理工</small></h3>
						      </div>
						    </div>
						  </div>
						  <div class="col-sm-4 col-md-3">
						    <div class="thumbnail">
						      <img src="images/s2.png" class="img-rounded" alt="...">
						      <div class="caption">
						        <h3 style="margin-top: 0px;margin-bottom: 0px;">张三丰<small>长沙理工</small></h3>
						      </div>
						    </div>
						  </div>
						  <div class="col-sm-4 col-md-3">
						    <div class="thumbnail">
						      <img src="images/s2.png" class="img-rounded" alt="...">
						      <div class="caption">
						        <h3 style="margin-top: 0px;margin-bottom: 0px;">张三丰<small>长沙理工</small></h3>
						      </div>
						    </div>
						  </div>
						  <div class="col-sm-4 col-md-3">
						    <div class="thumbnail">
						      <img src="images/s2.png" class="img-rounded" alt="...">
						      <div class="caption">
						        <h3 style="margin-top: 0px;margin-bottom: 0px;">张三丰<small>长沙理工</small></h3>
						      </div>
						    </div>
						  </div>
						  <div class="col-sm-4 col-md-3">
						    <div class="thumbnail">
						      <img src="images/s2.png" class="img-rounded" alt="...">
						      <div class="caption">
						        <h3 style="margin-top: 0px;margin-bottom: 0px;">张三丰<small>长沙理工</small></h3>
						      </div>
						    </div>
						  </div>
						  <div class="col-sm-4 col-md-3">
						    <div class="thumbnail">
						      <img src="images/s1.png" class="img-rounded" alt="...">
						      <div class="caption">
						        <h3 style="margin-top: 0px;margin-bottom: 0px;">张三丰<small>长沙理工</small></h3>
						      </div>
						    </div>
						  </div>
						  <div class="col-sm-4 col-md-3">
						    <div class="thumbnail">
						      <img src="images/s2.png" class="img-rounded" alt="...">
						      <div class="caption">
						        <h3 style="margin-top: 0px;margin-bottom: 0px;">张三丰<small>长沙理工</small></h3>
						      </div>
						    </div>
						  </div>
						  <div class="col-sm-4 col-md-3">
						    <div class="thumbnail">
						      <img src="images/s2.png" class="img-rounded" alt="...">
						      <div class="caption">
						        <h3 style="margin-top: 0px;margin-bottom: 0px;">张三丰<small>长沙理工</small></h3>
						      </div>
						    </div>
						  </div>
						  <div class="col-sm-4 col-md-3">
						    <div class="thumbnail">
						      <img src="images/s2.png" class="img-rounded" alt="...">
						      <div class="caption">
						        <h3 style="margin-top: 0px;margin-bottom: 0px;">张三丰<small>长沙理工</small></h3>
						      </div>
						    </div>
						  </div>
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
		
		<div class="container-fluid text-center" style="background-color: #dbdbdb;padding-top: 20px;">
		  	<p>© 2005-2025 ft.com, all rights reserved 方图教育</p>
		  	<p>违法和不良信息/涉未成年人/生活服务类专项有害信息投诉：13787134545</p>
		</div>
	</body>
</html>