<%@ page contentType="text/html; charset=GB2312" %>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<title>
knowledge
</title>
</head>
<body bgcolor="#ffffff">
<%
String sql="delete tb_Knowledge where ID="+request.getParameter("id");
boolean dele=condata.executeDelete(sql);
if(dele)
{
%>
<script language="javascript">
alert("É¾³ý³É¹¦£¡£¡£¡");
</script>
<%
response.sendRedirect("/logistics/Manager/Knowledge/mknowledge.jsp");
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
