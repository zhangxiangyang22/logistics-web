<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="/logistics/CSS/style.css">
<title>������Ϣ����</title>
<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>
</head>
<script language="javascript">
function check()
{
 
if(form_l.Title.value=="")
{
alert("����д���⣡����");
form_l.Title.focus();
return false;
}

if(form_l.Title.value.length>50)
{
alert("����ֻ������д50���֣�����");
form_l.Title.focus();
form_l.Title.value="";
return false;
}
if(form_l.style.value=="")
{
alert("����д֪ʶ���ͣ�����");
form_l.style.focus();
return false;
}
if(form_l.style.value.length>100)
{
alert("����ֻ������д100���֣�����");
form_l.style.focus();
form_l.style.value="";
return false;
}
if(form_l.content.value=="")
{
alert("����д���ݣ�����");
form_l.content.focus();
return false;
}
}
</script>
<jsp:include page="/Manager/mtop.jsp"/>
<body>
<form method="POST" action="/logistics/Manager/Knowledge/knowledgeadd_config.jsp"name="form_l">
<table width="785" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="39">
      <p align="center"><font size="7" face="����">����֪ʶ</font></td>
  </tr>
  <tr>
    <td width="100%" height="37">  ���⣺<font size="5">      
	<input name="Title" type="text" size="37" maxlength="50">
   </font><span class="style1">*</span> ���������������50����.</td>
  </tr>
  <tr>
    <td width="100%" height="37">  ��� <font size="5">
     &nbsp;<input name="style" type="text" size="37" maxlength="100"> 
      </font><span class="style1">*</span> ��������������100����.</td>
  </tr>
  <tr>
    <td width="100%" height="37">  ע�⣺���µĿ���д0-2000����</td>
  </tr>
  <tr>
    <td width="100%" height="36"><textarea rows="20" name="content" cols="100"></textarea></td>
  </tr>
  <tr>
    <td width="100%" height="16"> 
	<input type="submit" value="����" name="B1" onClick="return check()">
	<input type="reset" value="��д" name="B2"></td>
  </tr>
</table>
</form>
</body>
</html>
