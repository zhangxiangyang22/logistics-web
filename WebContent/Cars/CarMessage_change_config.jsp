<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="java.sql.*,java.util.Date,java.io.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>
CarMessage_change_config page
</title>
</head>
<%!
String trans(String str)
{
String result=null;
byte temp[];
try
{
temp=str.getBytes("iso8859-1");
result=new String(temp);
}catch(UnsupportedEncodingException e)
{System.out.println(e.toString());}
return result;
}
%>
<%
Date date=new Date();
String sql;
ResultSet rs;
String numbers=trans(request.getParameter("numbers"));
String types=trans(request.getParameter("type"));
String carname=trans(request.getParameter("carname"));
String usetime=trans(request.getParameter("usetime"));
String loads=trans(request.getParameter("loads"));
String transtyle=trans(request.getParameter("transtyle"));
String drivername=trans(request.getParameter("name"));
String number=trans(request.getParameter("number"));
String styles=trans(request.getParameter("styles"));
String drivertime=trans(request.getParameter("time"));
String linkman=trans(request.getParameter("linkman"));
String phone=trans(request.getParameter("phone"));
String remark=trans(request.getParameter("remark"));
String username=trans(request.getParameter("user"));
java.sql.Date showdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="update db_CarMessage set TradeMark='"+numbers+"',Brand='"+carname+"',Style='"+types+"',CarLoad='"+loads+"',UsedTime='"+
usetime+"',DriverName='"+drivername+"',DriverTime='"+drivertime+"',LicenceNumber='"+
number+"',LicenceStyle='"+styles+"',TranspotStyle='"+transtyle+"',LinkMan='"+linkman+"',LinkPhone='"+
phone+"',Remark='"+remark+"',IssueDate='"+showdate+"',UserName='"+username+"' where Code="+request.getParameter("numb");
boolean sert=condata.executeUpdata(sql);
if(sert)
{%>
<script language="javascript">
alert("������ĳ�����Ϣ�Ѿ��޸ĳɹ�������");
</script>
<%
response.sendRedirect("/logistics/Cars/CarMessage.jsp");
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
