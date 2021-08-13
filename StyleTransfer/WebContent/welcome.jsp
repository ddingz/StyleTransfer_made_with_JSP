<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.description" >
	<%@ include file="menu.jsp"%>
	<%!String greeting = "Home"; %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3" align="center">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
		</div>
		<div>
			<h2>
				<fmt:message key="title" />
			</h2>
			<br>
			<p>
				<fmt:message key="description" />
			</p>
		</div>
		<hr>
	</div>
	</fmt:bundle>
	<%@ include file="footer.jsp"%>
</body>
</html>