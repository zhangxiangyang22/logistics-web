<%@ page contentType="text/html; charset=GBK" import="java.sql.*,java.util.Date"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<title>
Good_config page
</title>
</head>
<%!
Date date=new Date();
String sql;
ResultSet rs;
%>
<%
request.setCharacterEncoding("gb2312");
String gname=request.getParameter("gname");
String gclass=request.getParameter("gclass");
String gcount=request.getParameter("gcount");
String gunit=request.getParameter("gunit");
String gstartfirm=request.getParameter("gstartfirm");
String gstartcity=request.getParameter("gstartcity");
String gendfirm=request.getParameter("gendfirm");
String gendcity=request.getParameter("gendcity");
String gtransstyle=request.getParameter("gtransstyle");
String gtime=request.getParameter("gtime");
String glink=request.getParameter("glink");
String gphone=request.getParameter("gphone");
String gremark=request.getParameter("gremark");
String grequest=request.getParameter("grequest");
String username=(String)session.getAttribute("name");
java.sql.Date gshowdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="insert into db_GoodsMeg values('"+gclass+"','"+
    gname+"','"+gcount+"','"+gunit+"','"+gstartfirm+"','"+
    gstartcity+"','"+gendfirm+"','"+gendcity+"','"+
    gtransstyle+"','"+gtime+"','"+gphone+"','"+
    glink+"','"+gshowdate+"','"+gremark+"','"+grequest+"','"+username+"')";
boolean sert=condata.executeInsert(sql);
if(sert)
{%>
<script language="javascript">
alert("您输入的货物信息已经成功完成！！！");
</script>
<%
response.sendRedirect("/logistics/Goods/Goods_show.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的货物信息发布失败！！！");
</script>
<%
response.sendRedirect("/logistics/Goods/Goods.jsp");
}
%>
<body bgcolor="#ffffff">
</body>
</html>
