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

String sql="delete tb_Active where ID="+request.getParameter("id");
boolean dele=condata.executeDelete(sql);
if(dele)
{
%>
<script language="javascript">
alert("ɾ���ɹ�������");
</script>
<%
response.sendRedirect("/logistics/Manager/Active/active.jsp");
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
