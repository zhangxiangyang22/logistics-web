<%@ page contentType="text/html; charset=GBK" %>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<title>
placard
</title>
</head>
<body bgcolor="#ffffff">
<%
String sql="delete db_Placard where ID="+request.getParameter("id");
boolean dele=condata.executeDelete(sql);
if(dele)
{
%>
<script language="javascript">
alert("ɾ���ɹ�������");
</script>
<%
response.sendRedirect("/logistics/Manager/Placard/placard.jsp");
}else
{
%>
<script language="javascript">
alert("ɾ��ʧ�ܣ�����");
history.back();
</script>
<%
}
%>
</body>
</html>
