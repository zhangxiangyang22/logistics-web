<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<title>
login
</title>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<Script language="javascript">
function check()
{
if(form1.name.value=="")
{
alert("请输入姓名");
form1.name.focus();
return false;
}
if(form1.password.value=="")
{
alert("请输入密码");
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
  <table width="350" height="232"  border="0" cellpadding="0" cellspacing="0" background="image/mlogin.gif">
    <tr>
      <td height="172">&nbsp;</td>
    </tr> <form name="form1" method="post" action="/logistics/Manager/Login/mlogin_config.jsp">
    <tr>
      <td height="23" align="center">
       
          &nbsp;用户名:
          <input type="text" name="name" size="11" maxlength="20">
	    密码:
	    <input type="password" name="password" size="11" maxlength="20">      </td>
    </tr>
    <tr>
      <td align="right">&nbsp;
        <input type="submit" value="登录" name="submit" onClick="return check()">
	  &nbsp;&nbsp;<input type="button" name="back" value="返回主页" onClick="goback()">&nbsp;
	  </td>
    </tr></form>
  </table>
</center>
</body>
</html>
