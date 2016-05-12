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

wsql="update tb_Enterprise set EnterpriseSort='"+style+"',EnterpriseName='"+ename+"',Operation='"+
   operation+"',WorkArea='"+area+"',Address='"+address+"',Phone='"+phone+"',LinkMan='"+linkman+"',HandSet='"+
   hand+"',Fax='"+fax+"',Email='"+email+"',Http='"+web+"',Intro='"+intr+"',IssueDate='"+
   showdate+"',Username='"+username+"'where ID= "+request.getParameter("code");
   boolean dd=condata.executeUpdata(wsql);
   if(dd)
   {
   %>
<script language="javascript">
alert("企业信息修改成功！！");
</script>
 <%
 response.sendRedirect("/logistics/Enterprise/enterprise.jsp");
  }else
{
  %>
<script language="javascript">
alert("企业信息修改失败！！");
</script>
 <%
 response.sendRedirect("/logistics/Enterprise/enterpriseShow.jsp");
}
%>
<body>

</body>
</html>
