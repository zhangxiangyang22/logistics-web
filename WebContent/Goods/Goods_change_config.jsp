<%@ page contentType="text/html; charset=GBK" import="java.sql.*,java.util.Date"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<title>
Goods_change_config page
</title>
</head>
<body bgcolor="#ffffff">
<%!
Date date=new Date();
String sql;
ResultSet rs;
%>
<%
request.setCharacterEncoding("gb2312");
String gclass=request.getParameter("gclass");
String gname=request.getParameter("gname");
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
String username=request.getParameter("username");
String code=request.getParameter("code");
java.sql.Date gshowdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="update db_GoodsMeg set GoodsStyle='"+
    gclass+"',GoodsName='"+gname+"',GoodsNumber='"+gcount+"',GoodsUnit='"+
    gunit+"',StartOmit='"+gstartfirm+"',StartCity='"+
    gstartcity+"',EndOmit='"+gendfirm+"',EndCity='"+gendcity+"',Style='"+
    gtransstyle+"',TransportTime='"+gshowdate+"',Phone='"+
    gphone+"',Link='"+glink+"',IssueDate='"+gshowdate+"',Remark='"+
    gremark+"',Request='"+grequest+"',UserName='"+
    username+"' where ID="+request.getParameter("code");
boolean sert=condata.executeUpdata(sql);
if(sert)
{%>
<script language="javascript">
alert("您输入的货物信息已经成功修改！！！");
</script>
<%
response.sendRedirect("/logistics/Goods/Goods_show.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的货物信息修改失败！！！");
history.back();
</script>
<%
}
%>
</body>
</html>
