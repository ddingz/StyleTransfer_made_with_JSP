<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>training</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/@magenta/image@0.2.1/dist/magentaimage.min.js"></script>
<script src="./resources/js/model.js" defer></script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3" align="center">Style Transfer</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<img id="content" class="image" width="250px" height="250px" />
				<h4>Step 1.input image</h4>
				<p>
					<input type="file" onchange="loadContent(event)">
				</p>
			</div>
			<div class="col-md-4">
				<img id="style" class="image" width="250px" height="250px" />
				<h4>Step 2.style image</h4>
				<p>
					<input type="file" onchange="loadStyle(event)">
				</p>
			</div>
			<div class="col-md-4">
				<canvas id="stylized" height="250px"></canvas>
				<h4>
					Step 3. <span id="loading">훈련 중 ...(기다리세요)</span><span id="ready"
						hidden>완성!</span>
				</h4>
			</div>
		</div>
		<hr>
		<div align="center">
			<button type="button" class="btn btn-primary" onclick="setupDemo()">훈련시작</button>
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">host logout</a>
		</div>
		<hr>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>