<%@ page contentType="text/html; charset=gb2312"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="logistics/CSS/style.css">
<title>
Enterprise_show  page
</title>
</head>
<Script language="javascript">
function check()
{
 if(form1.numbers.value=="")
{
alert("����д���ƺ��룡��");
form1.numbers.focus();
return false;
}
if(form1.type.value=="")
{
alert("����д�������ͣ�����");
form1.type.focus();
return false;
}
if(form1.carname.value=="")
{
alert("����д����Ʒ�ƣ�����");
form1.carname.focus();
return false;
}
if(form1.loads.value=="")
{
alert("����д�������أ�����");
form1.loads.focus();
return false;
}
if(form1.usetime.value=="")
{
alert("����дʹ�����ޣ�����");
form1.usetime.focus();
return false;
}
if(form1.style.value=="")
{
alert("����д�������ͣ�����");
form1.style.focus();
return false;
}
if(form1.name.value=="")
{
alert("����д��ʻԱ����������");
form1.name.focus();
return false;
}
if(form1.number.value=="")
{
alert("����д��ʻ֤���룡����");
form1.number.focus();
return false;
}
if(form1.styles.value=="")
{
alert("����д��ʻ֤���ͣ�����");
form1.styles.focus();
return false;
}
if(form1.time.value=="")
{
alert("����д��ʻԱ���䣡����");
form1.time.focus();
return false;
}
if(form1.linkman.value=="")
{alert("����д��ϵ�ˣ�����");
form1.linkman.focus();
return false;
}
if(form1.phone.value=="")
{
alert("����д��ϵ�绰������");
form1.phone.focus();
return false;
}
if(form1.meg.value=="")
{
alert("����д��ע������");
form1.meg.focus();
return false;
}
}
</Script>
<jsp:include page="/top.jsp"/>
<body bgcolor="#ffffff">
<p align="center"><b><font size="6">������Ϣ����</font></b></p>
<form action="/logistics/Cars/CarMessageadd_config.jsp" method="POST" name="form1">
  <table width="786" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
      <td width="20%" height="43">
        <p align="center">���ƺ��룺</p>
      </td>
      <td width="36%" height="43">
       <input type="text" name="numbers" size="20"></p>
      </td>
      <td width="18%" height="43">
        <p align="center">�������ͣ�</p>
      </td>
      <td width="30%" height="43">
        <input type="text" name="type" size="20"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="42">
        <p align="center">����Ʒ����</p>
      </td>
      <td width="36%" height="42">
       <input type="text" name="carname" size="20"></p>
      </td>
      <td width="18%" height="42">
        <p align="center">����������</p>
      </td>
      <td width="30%" height="42">
        <input type="text" name="loads" size="15">��</p>
      </td>
    </tr>
    <tr>
      <td height="45" align="center">��ʹ�����ޣ�</td>
      <td height="45"><input name="usetime" type="text" size="20"></td>
      <td height="45" align="center">�������ͣ�</td>
      <td height="45"><select name="style">
	  <option value="��;" selected >��;</option>
	  <option value="��;">��;</option>
	  </select></td>
    </tr>
    <tr>
      <td height="45" align="center">��ʻԱ������</td>
      <td height="45"><input type="text" name="name" size="20"></td>
      <td height="45" align="center">��ʻ֤���룺</td>
      <td height="45"><input type="text" name="number" size="20"></td>
    </tr>
    <tr>
      <td height="45" align="center">��ʻԱ����</td>
      <td height="45"><input type="text" size="20" name="time">��</td>
      <td height="45" align="center">��ʻ���ͣ�</td>
      <td height="45"><select size="1" name="styles">
	  <option value="A" selected>A</option>
	  <option value="B" >B</option>
	  <option value="C">C</option>
	  </select></td>
    </tr>
    <tr>
      <td width="20%" height="45">
        <p align="center">��ϵ�绰��</p>
      </td>
      <td width="36%" height="45">
       <input type="text" name="phone" size="20"></p>
      </td>
      <td width="18%" height="45">
        <p align="center">��ϵ�ˣ�</p>
      </td>
      <td width="30%" height="45">
      <input type="text" name="linkman" size="20"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="78">
        <p align="center">��ע��</p>
      </td>
      <td width="84%" height="78" colspan="3">
       <textarea rows="3" name="meg" cols="72"></textarea></p>
      </td>
    </tr>
    <tr>
      <td width="104%" height="40" colspan="4">
        <p align="center">
        <input type="submit" name="show" value="����" onClick="return check()">&nbsp;&nbsp;
        <input type="submit" name="reset" value="����">
      </td>
    </tr>
  </table>
</form>
</body>
</html>
