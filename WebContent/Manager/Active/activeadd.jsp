<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="/logistics/CSS/style.css">

<title>
placard_show page
</title>
<style type="text/css">
<!--
.style2 {color: #FF0000}
-->
</style></head>
<script language="javascript">
function check()
{
if(form1.title.value=="")
{
alert("����д���⣡����");
form1.title.focus();
return false;
}
if(form1.title.value.length>5)
{
alert("����д���ݣ�����");
form1.title.focus();
form1.title.value="";
return false;
}
if(form1.content.value=="")
{
alert("����д���ݣ�����");
form1.content.focus();
return false;
}
if(form1.author.value=="")
{
alert("����д���ߣ�����");
form1.author.focus();
return false;
}
}
</script>
<body bgcolor="#ffffff">
<form method="POST" action="/logistics/Manager/Active/activeadd_config.jsp"name="form1">
<table width="785" height="174" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="39">
      <p align="center"><font size="7" face="����">������̬��Ϣ����</font></td>
  </tr>
  <tr>
    <td width="100%" height="37"><font size="5">���⣺
   <input type="text" name="title" size="37"> 
   </font><span class="style2">* </span>��������ܹ���д50���ַ�.</td>
  </tr>
  <tr>
    <td width="100%" height="37">*  ע����������������д2000����</td>
  </tr>
  <tr>
    <td width="100%" height="36">
   <textarea rows="20" name="content" cols="100"></textarea></td>
  </tr>
<tr>
    <td width="100%" height="37"><font size="5">���ߣ�
   <input type="text" name="author" size="37"></font></td>
  </tr>
  <tr>
    <td width="100%" height="16">
   <input type="submit" value="����" name="B1"onClick="return check()">
   <input type="reset" value="��д" name="B2">
&nbsp;&nbsp;&nbsp;<a href="/logistics/Manager/Active/active.jsp">����</a>
</td>
  </tr>
</table>
</form>
</body>
</html>
