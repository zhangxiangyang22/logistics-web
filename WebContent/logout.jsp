<%@ page contentType="text/html; charset=GBK" %>
<jsp:useBean id="loginb" scope="session" class="wuliu.LoginBean"/>
<html>
<head>
<title>
logout page
</title>
</head>
<body bgcolor="#ffffff">
<%
loginb.clear();
session.invalidate();
response.sendRedirect("/logistics/index.jsp");
%>
</body>
</html>
