<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
placard_show page
</title>
</head>
<%!
ResultSet rs;
String sql;
int code;
%>
<body bgcolor="#ffffff">
<table width="100%" height="238" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#333333" bordercolordark="#FFFFFF">
  <tr>
    <td width="100%" height="39">
      <p align="center"><font size="7" face="����">����֪ʶ</font></td>
  </tr>
<%
sql="select * from tb_Knowledge where ID="+request.getParameter("id");
try
{
rs=condata.executeQuery(sql);
if(rs.next())
{
code=rs.getInt("ID");
%>
  <tr>
    <td width="100%" height="37"><font size="5">���⣺
  <%=rs.getString("Title")%></font></td>
  </tr>
  <tr>
    <td width="100%" height="37">*  ע����������������д2000����</td>
  </tr>
  <tr>
    <td width="100%" height="36">
   <textarea rows="10" name="content" cols="100">
   <%=rs.getString("Content")%></textarea></td>
  </tr>
<tr>
<td width="100%" height="27">&nbsp;����ʱ��:
<%=rs.getDate("IssueDate")%></td>
</tr>
<tr>
<td width="100%" height="27">&nbsp;֪ʶ����:
<%=rs.getString("Reside")%></td>
</tr>
<%
}
}catch(Exception e)
{
e.printStackTrace();
}
%>
<tr>
<td width="30%" height="27" align="center">
<input type="button" value="�رմ���" onClick="window.close()">
</td>
  </tr>
</table>
</body>
</html>
