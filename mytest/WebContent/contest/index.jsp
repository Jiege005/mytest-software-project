<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		
		 <jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>