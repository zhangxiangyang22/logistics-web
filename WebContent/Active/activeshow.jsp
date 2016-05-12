<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title></title>
</head>
<%!
String sql;
ResultSet rs=null;
int code;
%>
<body>
<table width="100%" height="444" border="1" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="39">
      <p align="center"><font size="7" face="隶书">动态信息</font></td>
  </tr>
<%
sql="select * from tb_Active where ID="+request.getParameter("id");
try
{
rs=condata.executeQuery(sql);
if(rs.next())
{
code=rs.getInt("ID");
%>
  <tr>
    <td width="100%" height="37"><font size="5">标题：
<%=rs.getString("Title")%></font></td>
  </tr>
  <tr>
    <td width="100%" height="36">
   <textarea rows="20" name="content" cols="100">
   <%=rs.getString("Content")%></textarea></td>
  </tr>
<tr>
<td width="100%" height="27">发布人:
<%=rs.getString("Author")%></td>
</tr>
<tr>
<td width="100%" height="27">发布时间:
<%=rs.getDate("IssueDate")%></td>
</tr>
<tr>
<td width="100%" height="27">文章号:
<%=code%></td>
</tr>
<%
}
}catch(Exception e)
{
e.printStackTrace();
}
%>
<tr><td width="100%" height="20" align="center">
<input type="button"onClick="window.close()" value="关闭窗口">
</td>
</tr>
</table>

</body>
</html>
