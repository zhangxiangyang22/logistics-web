<%@ page contentType="text/html; charset=GBK" %>
<html>
<head>
<title>
register
</title>
</head>
<script language="javascript">
      function check(){
		if(form1.name.value==""){
			alert("����������û���");
			form1.name.focus();
			return false;
		}
		if(form1.name.value.length>20)
		  {
		  alert("�������ע���û������󣡣�");
			form1.name.focus();
			return false;
		  }
		  if(form1.name.value.length<6)
		  {
		  alert("�������ע���û������󣡣�");
			form1.name.focus();
			return false;
		  }
          if(form1.password.value.length>16)
		  {
		  alert("�������ע���������󣡣�");
			form1.password.focus();
			return false;
		  }
		  if(form1.password.value.length<6)
		  {
		  alert("�������ע���������󣡣�");
			form1.password.focus();
			return false;
		  }
		if(form1.password.value==""){
			alert("��������ע�������");
			form1.password.focus();
			return false;
		}
		if(form1.repassword.value==""){
			alert("������ȷ������");
			form1.repassword.focus();
			return false;
		}
		if(form1.password.value!=form1.repassword.value){
			alert("��������������벻һ��");
			return false;
		}
		if(form1.email.value==""){
			alert("���������Emailַ");
			form1.email.focus();
			return false;
		}


		if(form1.phone.value==""){
			alert("�����������ϵ�绰");
			form1.phone.focus();
			return false;
		}
		if(form1.question.value==""){
			alert("����������ʾ�������ȡ������");
			form1.question.focus;
			return false;
		}
		if(form1.result.value==""){
			alert("������ش�����Ĵ�");
			form1.result.focus();
			return false;
		}
	}
</script>
<body >
<form method="POST" action="/logistics/regist_config.jsp" name="form1">
  <!--webbot bot="SaveResults" U-File="_private/form_results.txt"
  S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
    <div align="center">
  <h2 align="center"><b>��Աע��</b></h2>
   <p> *&nbsp; ע���������ݱ�����д������</p>
<table width="54%" height="205" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td width="35%" align="left" height="27">���֣� </td>
    <td width="65%" align="left"><input type="text" name="name" size="20">
*����6-20���ַ�</td>
  </tr>
  <tr>
    <td width="35%" height="27">
      <p>���룺       </p>    </td>
    <td width="65%"><input type="password" name="password" size="20">
&nbsp;*����6-16���ַ�</td>
  </tr>
  <tr>
    <td width="35%" height="27">
      <p>ȷ�����룺    </p>    </td>
    <td width="65%"><input name="repassword" type="password" size="20" maxlength="16"></td>
  </tr>
  <tr>
<td width="35%" height="27">
      �Ա� </td>
  <td width="65%">&nbsp; ��
    <input type="radio" value="man" checked name="sex">
    &nbsp; Ů
    <input type="radio" name="sex" value="moman"></td>
  </tr>
  <tr>
    <td width="35%" height="27">
      <p>�绰��       </p>    </td>
    <td width="65%"><input type="text" name="phone" size="20"></td>
  </tr>
  <tr>
    <td width="35%" height="27">
      <p>Email: 
        ��</p>    </td>
    <td width="65%"><input type="text" name="email" size="20"></td>
  </tr>
  <tr>
    <td width="35%" height="27">
    <p>�һ��������⣺   </p>    </td>
    <td width="65%"><input type="text" name="question" size="20"></td>
  </tr>
  <tr>
    <td width="35%" height="27">����𰸣�   </td>
    <td width="65%"><input type="text" name="result" size="20"></td>
  </tr>
  <tr>
    <td width="35%" height="16">
    <input type="submit" value="ע��"  name="Submit"onClick="return check()"> ��
  <input type="reset" value="����">&nbsp;&nbsp;<a href="/logistics/index.jsp">����</a>
    </td>
    <td width="65%">&nbsp;</td>
  </tr>
</table>
</div>
</form>
</body>
</html>
