<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>
login
</title>
</head>
<Script language="javascript">
function check()
{
if(form1.name.value=="")
{
alert("�������û�������");
form1.name.focus();
form1.password.value="";
return false;
}
if(form1.password.value=="")
{
alert("���������룡����");
form1.password.focus();
return false;
}
}
function goback()
{
window.location.href="/logistics/index.jsp";
}
</Script>
<body bgcolor="#ffffff">
<center>
<form name="form1" action="/logistics/login_config.jsp" method="post">
<table width="35%" height="260"  border="0" cellpadding="0" cellspacing="0" background="image/login.gif">
  <tr>
    <td height="181">&nbsp;</td>
  </tr>
  <tr>
    <td height="38" align="center"> �û���:
      <input type="text" name="name" size="10" maxlength="20">
&nbsp;����:
<input type="password" name="password" size="12" maxlength="20"></td>
  </tr>
  <tr>
    <td height="33" align="center" valign="top">&nbsp;&nbsp;
<input type="submit" value="��¼" name="login" onClick="return check()">
<input type="button" value="������ҳ" name="back" onClick="goback()">
             &nbsp;&nbsp;<a href="/logistics/register.jsp">ע��</a> &nbsp;&nbsp;<a href="/logistics/found.jsp">����</a>&nbsp;
     </p></td>
  </tr>
</table>
</form>
</center>
</body>
</html>

