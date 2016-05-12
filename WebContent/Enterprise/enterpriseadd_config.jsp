<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"  %>
<%@ page import="java.util.Date"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title></title>
</head>
<%!
ResultSet rs=null;
String sql,wsql;
Date date=new Date();
%>
<%
request.setCharacterEncoding("gb2312");
String ename=request.getParameter("name");
String style=request.getParameter("style");
String operation=request.getParameter("operation");
String area=request.getParameter("area");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
String linkman=request.getParameter("linkman");
String email=request.getParameter("email");
String web=request.getParameter("web");
String intr=request.getParameter("intr");
String fax=request.getParameter("fax");
String hand=request.getParameter("hand");
java.sql.Date showdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
String username=(String)session.getAttribute("name");
sql="select EnterpriseSort,EnterpriseName from tb_Enterprise where EnterpriseSort='"+style+"'and EnterpriseName='"+ename+"'";
try
{
rs=condata.executeQuery(sql);
if(rs.next())
{%>
<script language="javascript">
alert("此企业信息已经发布！！");
history.back();
</script>
<%}else
{
wsql="insert into tb_Enterprise values('"+style+"','"+ename+"','"+
   operation+"','"+area+"','"+address+"','"+phone+"','"+linkman+"','"+
   hand+"','"+fax+"','"+email+"','"+web+"','"+intr+"','"+showdate+"','"+username+"')";
   boolean dd=condata.executeInsert(wsql);
   if(dd)
   {
   %>
<script language="javascript">
alert("企业信息发布成功！！");
</script>
 <%
 response.sendRedirect("/logistics/Enterprise/enterprise.jsp");
  }}
}catch(Exception e)
{out.print("查询异常！1");
}
%>
<body>

</body>
</html>
