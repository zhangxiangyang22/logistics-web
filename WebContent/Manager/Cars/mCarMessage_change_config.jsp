<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="java.sql.*,java.util.Date"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>
CarMessage_change_config page
</title>
</head>
<%!
Date date=new Date();
String sql;
ResultSet rs;
%>
<%
request.setCharacterEncoding("gb2312");
String numbers=request.getParameter("numbers");
String types=request.getParameter("type");
String carname=request.getParameter("carname");
String usetime=request.getParameter("usetime");
String loads=request.getParameter("loads");
String transtyle=request.getParameter("transtyle");
String drivername=request.getParameter("name");
String number=request.getParameter("number");
String styles=request.getParameter("styles");
String drivertime=request.getParameter("time");
String meg=request.getParameter("meg");
String linkman=request.getParameter("linkman");
String phone=request.getParameter("phone");
String gremark=request.getParameter("gremark");
String username=request.getParameter("username");
java.sql.Date showdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="update db_CarMessage set TradeMark='"+numbers+"',Brand='"+carname+"',Style='"+types+"',CarLoad='"+loads+"',UsedTime='"+
usetime+"',DriverName='"+drivername+"',DriverTime='"+drivertime+"',LicenceNumber='"+
number+"',LicenceStyle='"+styles+"',TranspotStyle='"+transtyle+"',LinkMan='"+linkman+"',LinkPhone='"+
phone+"',Remark='"+meg+"',IssueDate='"+showdate+"',UserName='"+username+"' where Code="+request.getParameter("code");
boolean sert=condata.executeUpdata(sql);
if(sert)
{%>
<script language="javascript">
alert("������ĳ�����Ϣ�Ѿ��޸ĳɹ�������");
</script>
<%
response.sendRedirect("/logistics/Manager/Cars/mCarMessage.jsp");
}else
{
%>
<script language="javascript">
alert("������ĳ�����Ϣ�޸�ʧ�ܣ�����");
history.back();
</script>
<%
}
%>
<body bgcolor="#ffffff">
</body>
</html>
