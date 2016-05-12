<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="java.util.Date"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
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
sql="update tb_Active set Title='"+title+"',Content='"+content+"',Author='"+author+"',IssueDate='"+datatime+"' where ID="+request.getParameter("id");;
boolean bb=condata.executeUpdata(sql);
if(bb)
{%>
<script language="javascript">
window.location.href="/logistics/Manager/Active/active.jsp";
</script>
<%
}else
{
%>
<script language="javascript">
history.back();
</script>
<%
}
%>
</body>
</html>
