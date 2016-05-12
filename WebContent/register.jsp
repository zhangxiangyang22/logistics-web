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
			alert("请输入你的用户名");
			form1.name.focus();
			return false;
		}
		if(form1.name.value.length>20)
		  {
		  alert("你输入的注册用户名有误！！");
			form1.name.focus();
			return false;
		  }
		  if(form1.name.value.length<6)
		  {
		  alert("你输入的注册用户名有误！！");
			form1.name.focus();
			return false;
		  }
          if(form1.password.value.length>16)
		  {
		  alert("你输入的注册密码有误！！");
			form1.password.focus();
			return false;
		  }
		  if(form1.password.value.length<6)
		  {
		  alert("你输入的注册密码有误！！");
			form1.password.focus();
			return false;
		  }
		if(form1.password.value==""){
			alert("请输入你注册的密码");
			form1.password.focus();
			return false;
		}
		if(form1.repassword.value==""){
			alert("请输入确认密码");
			form1.repassword.focus();
			return false;
		}
		if(form1.password.value!=form1.repassword.value){
			alert("你输入的两次密码不一致");
			return false;
		}
		if(form1.email.value==""){
			alert("请输入你的Email址");
			form1.email.focus();
			return false;
		}


		if(form1.phone.value==""){
			alert("请输入你的联系电话");
			form1.phone.focus();
			return false;
		}
		if(form1.question.value==""){
			alert("输入密码提示问题便于取回密码");
			form1.question.focus;
			return false;
		}
		if(form1.result.value==""){
			alert("请输入回答问题的答案");
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
  <h2 align="center"><b>会员注册</b></h2>
   <p> *&nbsp; 注意以下内容必须填写完整。</p>
<table width="54%" height="205" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td width="35%" align="left" height="27">名字： </td>
    <td width="65%" align="left"><input type="text" name="name" size="20">
*姓名6-20个字符</td>
  </tr>
  <tr>
    <td width="35%" height="27">
      <p>密码：       </p>    </td>
    <td width="65%"><input type="password" name="password" size="20">
&nbsp;*密码6-16个字符</td>
  </tr>
  <tr>
    <td width="35%" height="27">
      <p>确认密码：    </p>    </td>
    <td width="65%"><input name="repassword" type="password" size="20" maxlength="16"></td>
  </tr>
  <tr>
<td width="35%" height="27">
      性别： </td>
  <td width="65%">&nbsp; 男
    <input type="radio" value="man" checked name="sex">
    &nbsp; 女
    <input type="radio" name="sex" value="moman"></td>
  </tr>
  <tr>
    <td width="35%" height="27">
      <p>电话：       </p>    </td>
    <td width="65%"><input type="text" name="phone" size="20"></td>
  </tr>
  <tr>
    <td width="35%" height="27">
      <p>Email: 
        　</p>    </td>
    <td width="65%"><input type="text" name="email" size="20"></td>
  </tr>
  <tr>
    <td width="35%" height="27">
    <p>找回密码问题：   </p>    </td>
    <td width="65%"><input type="text" name="question" size="20"></td>
  </tr>
  <tr>
    <td width="35%" height="27">问题答案：   </td>
    <td width="65%"><input type="text" name="result" size="20"></td>
  </tr>
  <tr>
    <td width="35%" height="16">
    <input type="submit" value="注册"  name="Submit"onClick="return check()"> 　
  <input type="reset" value="重置">&nbsp;&nbsp;<a href="/logistics/index.jsp">返回</a>
    </td>
    <td width="65%">&nbsp;</td>
  </tr>
</table>
</div>
</form>
</body>
</html>
