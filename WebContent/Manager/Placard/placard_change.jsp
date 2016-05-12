<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.Date,java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="/logistics/CSS/style.css">
<title>
placard_show page
</title>
</head>
<script language="javascript">
function check()
{
 if(form1.title.vlaue=="")
{
alert("请填写标题！！！");
form1.title.focus();
}
if(form1.content.value=="")
{
alert("请填写内容！！！");
form1.content.focus();
}
}
</script>
<%!
ResultSet rs;
String sql;
int code;
%>
<body bgcolor="#ffffff">
<form method="POST" action="/logistics/Manager/Placard/placard_change_config.jsp"name="form1">
<table width="785" height="238" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="100%" height="39">
      <p align="center"><font size="7" face="隶书">公告信息修改</font></td>
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
    <td width="100%" height="37"><font size="5"> 标题：
   <input type="text" name="title" size="37" value="<%=rs.getString("Title")%>"></font></td>
  </tr>
  <tr>
    <td width="100%" height="37"> *  注意以下内容最多可以写1000个字</td>
  </tr>
  <tr>
    <td width="100%" height="36">
   <textarea rows="10" name="content" cols="100">
   <%=rs.getString("Content")%></textarea></td>
  </tr>
<tr>
<td width="100%" height="16">  发布人:
  <input type="text" name="author" size="37" value="<%=rs.getString("Author")%>">
</td>
</tr>
<tr>
<td width="100%" height="16"> 发布时间:
<%=rs.getDate("IssueDate")%>
</td>
</tr>
<tr>
<td width="100%" height="16"> 文章号:
<input type="hidden" name="id" size="37" value="<%=code%>">
</td>
</tr>
<%
}
}catch(Exception e)
{
e.printStackTrace();
}
%>
<tr>
<td width="30%" height="16">
   <input type="submit" value="修改" name="B1"onClick="return check()">
   <input type="reset" value="重写" name="B2">
   &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
   <a href="/logistics/Manager/Placard/placard.jsp">返回</a>
</td>
   </tr>
</table>
</form>
</body>
</html>
