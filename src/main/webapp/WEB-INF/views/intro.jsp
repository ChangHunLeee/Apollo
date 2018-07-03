<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Apollo Introduce</title>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- INTRO CSS -->
<link href="css/intro.css" type="text/css" rel="stylesheet">
<link href="css/common.css" type="text/css" rel="stylesheet">
<!-- AWESOMEFONT를 위한 cdn -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<script>
	$(function() {
		$('#intro-login-btn').click(function() {
			location.href="login.htm";
		});
		
		$('#intro-join-btn').click(function() {
			location.href="join.htm";
		});
	});

  </script>
  
<style>
.carousel-inner img {
	width: 100%; /* Set width to 100% */
	height: 300px;
}


</style>
</head>
<body>
	<!-- header -->
	<nav class="navbar navbar-default navbar-fixed-top" id="header">
		<div>
			<div class="navbar-header container-fluid">
				<a href="index.htm"><img id="gohome" class="header_logo"
					src="img/apollo_logo.png" /></a>
			</div>
			<div class="nav navbar-nav navbar-right" id="intro-navber-btns">
				<input type="button" class="btn" value="로그인" id="intro-login-btn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" class="btn" value="구매하기" id="intro-buying-btn" data-toggle="modal" data-target="#apollokey-modal-dialog">
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div id="intro-page-top">
			<div>
				<div class="intro-img">
					<div class="intro-img-content">
						<div id="intro-img-content-logo">Welcome To Apollo</div>
						<br>
						<div id="intro-img-content-sub">Easy, Too Faster</div>
					</div>
					<div class="intro-img-cover"></div>
				</div>
			</div>
		</div>
			<div id="intro-page-simple-content">
				
			</div>
	<div class="row" id="intro-page-three-content">
		<div class="col-sm-4">
			<img>
			<div>
				<h3>자율적인 프로젝트 생성</h3>
				<br>
				<div class="intro-page-content">
					커스텀마이징 가능한 프로젝트 생성으로 팀 동료와의 협업을 향상시킬 수 있습니다.
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<img src="img/intro-check-img.png" id="intro-check-img">
			<div>
				<h3>오늘 해야할 업무 관리</h3>
				<br>
				<div class="intro-page-content">
					기본적으로 오늘 해야할 업무를 확인하고, 
					<br>
					중요한 업무는 별도로 관리하세요.
				</div>
			</div>
		</div>
		<br>
		<div class="col-sm-4">
			<img>
			<div>
				<h3>체계적인 파일 관리시스템</h3>
				<br>
				<div class="intro-page-content">
					찾기 어려운 파일을 한눈에 볼 수 있습니다. 
					<br>
					더 이상 파일을 찾느라 시간을 허비하지 않아도 됩니다.
				</div>
			</div>
		</div>
	</div>

		<div class="row">
			<div class="col-sm-8">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
					</ol>

					<br>
					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="img/timeline.png" style="heght:300px">
							<div class="carousel-caption">
								<h3>Step_TimeLine</h3>
								<p></p>
							</div>
						</div>

						<div class="item">
							<img src="img/step-list.PNG" style="heght:300px">
							<div class="carousel-caption">
								<h3>Step_List</h3>
								<p>소개이미지 설명</p>
							</div>
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="well">
					<h4>이곳은 없어질 부분</h4>
				</div>
			</div>
		</div>
		<hr>
	</div>

	<div class="container text-center">
		<h3>뭐로 바꿀지 고민중인 부분</h3>
		<br>
		<div class="row">
			<div class="col-sm-3">
				<img src="https://placehold.it/150x80?text=IMAGE"
					class="img-responsive" style="width: 100%">
				<p>Current Project</p>
			</div>
			<div class="col-sm-3">
				<img src="https://placehold.it/150x80?text=IMAGE"
					class="img-responsive" style="width: 100%">
				<p>Project 2</p>
			</div>
			<div class="col-sm-3">
				<div class="well">
					<p>Some text..</p>
				</div>
				<div class="well">
					<p>Some text..</p>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="well">
					<p>Some text..</p>
				</div>
				<div class="well">
					<p>Some text..</p>
				</div>
			</div>
		</div>
		<hr>
	</div>
	
	<div class="container text-center">
		<h3>Tutorial Video</h3>
		<br>
		<div style="background-color:gray; width:700px; height:500px;">
			<h3>Apollo 영상 들어갈 부분</h3> 
		</div>
		<hr>
	</div>
	
	<footer class="container-fluid text-center" id="intro-footer">
		<p>@ Copyright 2018.All right reserved</p>
	</footer>

</body>
</html>