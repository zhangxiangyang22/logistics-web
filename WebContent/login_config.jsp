<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<title>login_config</title>
</head>
<%
ResultSet rs=null;
request.setCharacterEncoding("gb2312");
String name=request.getParameter("name");
String password=request.getParameter("password");
if(name==""&&name==null&&password==""&&password==null)
{
%>
<jsp:forward page="/logistics/login.jsp"/>
<%}
else{
try
{
String sql="select * from db_Customer where Name='"+name+"' and Password='"+password+"'";
rs=condata.executeQuery(sql);
if(rs.next())
{
String Name=rs.getString("Name");
session.setAttribute("name",Name);
session.setAttribute("login","success");
%>
<script language="javascript">
alert("µÇÂ¼³É¹¦£¡£¡£¡");
window.location.href="/logistics/index.jsp";
</script>
<%
}
else
{
%>
<script language="javascript">
alert("µÇÂ¼Ê§°Ü£¡£¡£¡");
history.back();
</script>
<%
}
//rs.close();
//condata.closeStatement();
//condata.closeConn();
}catch(Exception e)
{
System.out.println("Á¬½ÓÒì³£login_config");
}
}
%>
<body bgcolor="#ffffff">
</body>
</html>