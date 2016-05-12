<%@ page contentType="text/html; charset=GB2312" language="java" %>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>
enterprise
</title>
</head>
<%@ page contentType="text/html; charset=GB2312"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<title>
Goods_delete page
</title>
</head>
<body bgcolor="#ffffff">
<%

String sql="delete tb_Enterprise where ID="+request.getParameter("id");
boolean dele=condata.executeDelete(sql);
if(dele)
{
%>
<script language="javascript">
alert("É¾³ý³É¹¦£¡£¡£¡");
</script>
<%
response.sendRedirect("/logistics/Enterprise/enterprise.jsp");
}else
{
%>
<script language="javascript">
alert("É¾³ýÊ§°Ü£¡£¡£¡");
history.back();
</script>
<%
}
%>
</body>
</html>

<body bgcolor="#ffffff">

</body>
</html>
