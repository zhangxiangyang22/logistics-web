<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" %>
<% request.setCharacterEncoding("gb2312"); %>
<html>
<head>
<title>�һ����봰��</title>
</head><script language="javascript">

        function check(){
                if(form1.username.value==""){
                        alert("���������һ�����̫��Ц��");
                        form1.username.focus();
                        return false;

                }
                if(form1.email.value==""){
                        alert("���������Emailַ");
                        form1.email.focus();
                        return false;
                }
                if(form1.question.value==""){
                        alert("��������ʾ������");
                        form1.question.focus();
                        return false;
 }
                if(form1.result.value==""){
                        alert("��������ʾ����Ĵ�");
                        form1.result.focus();
                        return false;

                }
        }
		function gologin()
		{
		window.location.href="/logistics/login.jsp";
		}
</script>
<body>

<br>
<table width="502" height="213" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#E8FFFF" class="tableBorder">
  <form action="/logistics/found_config.jsp" name="form1" method="post">
  <tr>
    <td height="43" colspan="4" align="center" class="head">&nbsp;</td>
  </tr>
  <tr>
    <td width="33" rowspan="4" align="center" valign="middle" >&nbsp;</td>
    <td width="176" height="23">�û���:    </td>
    <td width="258"><input name="username" type="text" size="31"></td>
    <td width="35" rowspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td height="23">Email:</td>
    <td height="23"><input name="email" type="text" size="31"></td>
    </tr>
  <tr>
    <td height="23">��ʾ������:</td>
    <td height="23"><input name="question" type="text" size="31"></td>
    </tr>
  <tr>
    <td height="53">��:</td>
    <td height="53"><input name="result" type="text" size="31"></td>
    </tr>
  <tr align="center">
    <td height="46" colspan="4">
<input name="Submit" type="submit" value="����" onClick="return check()">
      <input name="Submit2" type="reset" value="����">
	  <input type="button" value="��¼" name="login" onClick="gologin()">
&nbsp;&nbsp;<a href="/logistics/index.jsp">���ص���ҳ</a>
</td>
  </tr>
  </form>
</table>
</body>
</html>
