<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>无标题文档</title>
</head>

<body>
<form method="POST" action=""name="form1">
<table border="1" width="100%" height="238">
  <tr>
    <td width="100%" height="39">
      <p align="center"><font size="7" face="隶书">公告信息</font></td>
  </tr>
<%
sql="select * from db_Placard where ID="+request.getParameter("id");
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
    <td width="100%" height="37">*  注意以下内容最多可以写1000个字</td>
  </tr>
  <tr>
    <td width="100%" height="36">
   <textarea rows="10" name="content" cols="100">
   <%=rs.getString("Content")%></textarea></td>
  </tr>
<tr>
<td width="100%" height="16">发布人:
<%=rs.getString("Author")%>
</td>
</tr>
<tr>
<td width="100%" height="16">发布时间:
<%=rs.getDate("IssueDate")%>
</td>
</tr>
<tr>
<td width="100%" height="16">文章号:
<%=code%>"
</td>
</tr>
<%
}
}catch(Exception e)
{
e.printStackTrace();
}
%>
</table>
</form>
</body>
</html>
