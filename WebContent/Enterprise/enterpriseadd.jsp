<%@ page language="java" contentType="text/html;charset=gb2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>New Page 1</title>
</head>
<script language="javascript">
function check()
{
if(form1.name.value=="")
{
alert("��������ҵ���ƣ�1");
form1.name.focus();
return false;
}
if(form1.style.value=="")
{
alert("��������ҵ���ͣ�����");
form1.style.focus();
return false();
}
if(form1.operation.value=="")
{
alert("��������ҵ�ľ�Ӫ��Χ����");
form1.operation.focus();
return false;
}
if(form1.area.value=="")
{
alert("��������ҵ�������򣡣�");
form1.area.focus();
return false;
}
if(form1.address.value=="")
{
alert("��������ҵ��ַ������");
form1.address.focus();
return false;
}
if(form1.phone.value=="")
{
alert("��������ҵ��ϵ�绰������");
form1.phone.focus();
return false;
}
if(form1.linkman.value=="")
{
alert("��������ҵ��ϵ�ˣ�����");
form1.linkman.focus();
return false;
}
if(form1.hand.value=="")
{
alert("�������ֻ��ţ�����");
form1.hand.focus();
return false;
}
if(form1.fax.value=="")
{
alert("��������ҵ����ţ�����");
form1.fax.focus();
return false;
}
if(form1.email.value=="")
{
alert("��������ҵ�ʼ���ַ������");
form1.email.focus();
return false;
}
if(form1.web.value=="")
{
alert("��������ҵ��ַ������");
form1.web.focus();
return false;
}
if(form1.intr.value=="")
{
alert("��������ҵ���ͽ��ܣ�����");
form1.intr.focus();
return false;
}
}
</script>
<jsp:include page="/top.jsp"/>
<body>
  <form method="POST" action="/logistics/Enterprise/enterpriseadd_config.jsp" name="form1">
<table width="786" height="345" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="758" height="40" colspan="4">
      <p align="center"><font face="����" size="6">��ҵ��Ϣ����</font></td>
  </tr>
  <tr>
    <td width="115" height="36" align="center">��ҵ���ͣ�</td>
    <td width="265" height="36"><input type="text" name="style" size="20"></td>
    <td width="125" height="36" align="center">��ҵ���ƣ�</td>
    <td width="253" height="36"><input type="text" name="name" size="20"></td>
  </tr>
  <tr>
    <td width="115" height="35" align="center">��Ӫ��Χ</td>
    <td width="265" height="35"><input type="text" name="operation" size="20"></td>
    <td width="125" height="35" align="center">��������</td>
    <td width="253" height="35"><input type="text" name="area" size="20"></td>
  </tr>
  <tr>
    <td width="115" height="38" align="center">��ҵ��ַ</td>
    <td width="265" height="38"><input type="text" name="address" size="20"></td>
    <td width="125" height="38" align="center">��ϵ�绰��</td>
    <td width="253" height="38"><input type="text" name="phone" size="20"></td>
  </tr>
  <tr>
    <td width="115" height="34" align="center">��ϵ�ˣ�</td>
    <td width="265" height="34"><input type="text" name="linkman" size="20"></td>
    <td width="125" height="34" align="center">�ֻ��ţ�</td>
    <td width="253" height="34"><input type="text" name="hand" size="20"></td>
  </tr>
  <tr>
    <td width="115" height="35" align="center">����ţ�</td>
    <td width="265" height="35"><input type="text" name="fax" size="20"></td>
    <td width="125" height="35" align="center">�ʼ���ַ</td>
    <td width="253" height="35"><input type="text" name="email" size="20"></td>
  </tr>
  <tr>
    <td width="115" height="34" align="center">��ҵ��ַ��</td>
    <td width="265" height="34"><input type="text" name="web" size="20"></td>
    <td width="125" height="34" align="center">���ͽ��ܣ�</td>
    <td width="253" height="34"><input type="text" name="intr" size="20"></td>
  </tr>
  <tr>
    <td width="758" height="45" colspan="4" align="center">
      <p><input type="submit" value="����" name="B1" onClick="return check()"><input type="reset" value="��д" name="B2"></td>
  </tr>
</table>
</form>
</body>

</html>
