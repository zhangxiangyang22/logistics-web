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
String style=request.getParameter("style");
java.sql.Date datatime=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="update tb_Knowledge set Title='"+title+"',Content='"+content+"',IssueDate='"+datatime+"',Reside='"+style+"'where ID="+request.getParameter("id");
boolean bb=condata.executeUpdata(sql);
if(bb)
{%>
<script language="javascript">
alert("�����������֪ʶ�Ѿ������ɹ�������");
</script>
<%
response.sendRedirect("/logistics/Manager/Knowledge/mknowledge.jsp");
}else
{
%>
<script language="javascript">
alert("�����������֪ʶ�洢ʧ�ܣ�����");
history.back();
</script>
<%
}
%>
</body>
</html>
