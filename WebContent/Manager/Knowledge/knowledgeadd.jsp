<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="/logistics/CSS/style.css">
<title>公告信息发布</title>
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
alert("请填写标题！！！");
form_l.Title.focus();
return false;
}

if(form_l.Title.value.length>50)
{
alert("标题只允许填写50个字！！！");
form_l.Title.focus();
form_l.Title.value="";
return false;
}
if(form_l.style.value=="")
{
alert("请填写知识类型！！！");
form_l.style.focus();
return false;
}
if(form_l.style.value.length>100)
{
alert("标题只允许填写100个字！！！");
form_l.style.focus();
form_l.style.value="";
return false;
}
if(form_l.content.value=="")
{
alert("请填写内容！！！");
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
      <p align="center"><font size="7" face="隶书">物流知识</font></td>
  </tr>
  <tr>
    <td width="100%" height="37">  标题：<font size="5">      
	<input name="Title" type="text" size="37" maxlength="50">
   </font><span class="style1">*</span> 标题内容最多输入50个字.</td>
  </tr>
  <tr>
    <td width="100%" height="37">  类别： <font size="5">
     &nbsp;<input name="style" type="text" size="37" maxlength="100"> 
      </font><span class="style1">*</span> 类别内容最多输入100个字.</td>
  </tr>
  <tr>
    <td width="100%" height="37">  注意：文章的可以写0-2000个字</td>
  </tr>
  <tr>
    <td width="100%" height="36"><textarea rows="20" name="content" cols="100"></textarea></td>
  </tr>
  <tr>
    <td width="100%" height="16"> 
	<input type="submit" value="发布" name="B1" onClick="return check()">
	<input type="reset" value="重写" name="B2"></td>
  </tr>
</table>
</form>
</body>
</html>
