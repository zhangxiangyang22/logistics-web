<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="java.util.Date"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<title>
placard_show_config page
</title>
</head>
<%!
String sql;
Date date=new Date();
%>
<body bgcolor="#ffffff">
<%
request.setCharacterEncoding("gb2312");
String title=request.getParameter("title");
String content=request.getParameter("content");
String author=request.getParameter("author");
java.sql.Date datatime=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="insert tb_Active values('"+title+"','"+content+"','"+author+"','"+datatime+"')";
boolean bb=condata.executeInsert(sql);
if(bb)
{%>
<script language="javascript">
alert("您输入的动态信息已经存储完成！！！");
</script>
<%
response.sendRedirect("/logistics/Manager/Active/active.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的动态信息存储失败！！！");
history.back();
</script>
<%
}
%>
</body>
</html>
