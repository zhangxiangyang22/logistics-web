<%@ page contentType="text/html; charset=GBK" %>
<html>
<head>
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
}
</script>
<body bgcolor="#ffffff">
<form method="POST" action="/logistics/Manager/Placard/placard_show_config.jsp"name="form1">
<table width="785" height="174" border="1" cellpadding="0" cellspacing="0" align="center">
  <tr>
    <td width="100%" height="39">
      <p align="center"><font size="7" face="����">������Ϣ����</font></td>
  </tr>
  <tr>
    <td width="100%" height="37"><font size="5">���⣺
   <input type="text" name="title" size="37"></font></td>
  </tr>
  <tr>
    <td width="100%" height="37">*  ע����������������д1000����</td>
  </tr>
  <tr>
    <td width="100%" height="36">
   <textarea rows="10" name="content" cols="100"></textarea></td>
  </tr>
  <tr>
    <td width="100%" height="16">
   <input type="submit" value="����" name="B1"onClick="return check()">
   <input type="reset" value="��д" name="B2">
&nbsp;&nbsp;&nbsp;<a href="/logistics/Manager/Placard/placard.jsp">����</a>
</td>
  </tr>
</table>
</form>
</body>
</html>
