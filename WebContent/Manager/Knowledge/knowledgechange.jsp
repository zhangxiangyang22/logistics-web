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
alert("����д���⣡����");
form1.title.focus();
}
if(form1.content.value=="")
{
alert("����д���ݣ�����");
form1.content.focus();
}
if(form1.style.value=="")
{
alert("����д֪ʶ���ͣ�����");
form1.style.focus();
}
}
</script>
<%!
ResultSet rs;
String sql;
int code;
%>
<jsp:include page="/Manager/mtop.jsp"/>
<body bgcolor="#ffffff">
<form method="POST" action="/logistics/Manager/Knowledge/knowledgeChange_config.jsp"name="form1">
<table width="785" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="39">
      <p align="center"><font size="7" face="����">����֪ʶ�޸�</font></td>
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
   <input type="text" name="title" size="37" value="<%=rs.getString("Title")%>"></font></td>
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
<td width="100%" height="16">����ʱ��:
<%=rs.getDate("IssueDate")%>
</td>
</tr>
<tr>
<td width="100%" height="16">֪ʶ����:
<input type="text" name="style" size="37" value="<%=rs.getString("Reside")%>">
</td>
</tr>
<tr>
<td width="100%" height="16">���º�:
<input type="text"readOnly="yes" name="id" size="37" value="<%=code%>">
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
   <input type="submit" value="�޸�" name="B1"onClick="return check()">
   <input type="reset" value="��д" name="B2">
   &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
   <a href="/logistics/Manager/Knowledge/mknowledge.jsp">����</a>
</td>
   </tr>
</table>
</form>
</body>
</html>
