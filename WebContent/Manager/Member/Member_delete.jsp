<%@ page contentType="text/html; charset=GBK" %>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<title>
Member_delete page
</title>
</head>
<%
String code,sql;
%>
<body bgcolor="#ffffff">
<%
 sql="delete db_Customer where ID="+request.getParameter("id");
boolean bb=condata.executeDelete(sql);
if(bb)
{
%>
<script language="javascript">
alert("修改成功！！！");
</script><%
response.sendRedirect("/logistics/Manager/Member/mMember.jsp");
} else
{
%>
<script language="javascript">
alert("修改失败！！！");
history.back();
</script><%
}
%>
</body>
</html>
