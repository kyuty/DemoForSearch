<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Title</title>
</head>
<body>
	<h1>欢迎观临本系统</h1>
	<c:choose>
		<c:when test="${ empty sessionScope.sessionUser}">您还没有登录，
				点击这里跳转到<a href="<c:url value='login.jsp'/> ">登录页面</a>，
				点击这里跳转到<a href="<c:url value='regist.jsp'/> ">注册页面</a>.
		</c:when>
		<c:otherwise>
			您好，${sessionScope.sessionUser.username}用户 <br/>
			<a href="<c:url value='search.html'/> ">搜索页面</a>.
		</c:otherwise>
	</c:choose>
</body>
</html>
