<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
Manager_index page
</title>
</head>
<body bgcolor="#ffffff">
<table width="774" height="504"  border="0" cellpadding="0" cellspacing="0" background="image/nindex.jpg" align="center">
  <tr valign="top">
    <td height="146" colspan="2"><jsp:include page="/Manager/mtop.jsp"/></td>
  </tr>
  <tr>
    <td height="35"><font color="#FFFFFF">&nbsp;������̨����</font></td>
    <td width="558" rowspan="2"></td>
  </tr>
  <tr>
    <td width="216" align="left" valign="top"><table width="93%" height="256"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="37%" height="42">&nbsp;</td>
        <td width="63%" align="left"><a href="/logistics/Manager/Enterprise/enterprise.jsp">��ҵ��Ϣ����</a></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><a href="/logistics/Manager/Goods/mGoods_show.jsp">������Ϣ����</a></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><a href="/logistics/Manager/Cars/mCarMessage.jsp">������Ϣ����</a></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td> <a href="/logistics/Manager/Placard/placard.jsp">������Ϣ����</a></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><a href="/logistics/Manager/Knowledge/mknowledge.jsp">����֪ʶ����</a></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><a href="/logistics/Manager/Member/mMember.jsp">��Ա��Ϣ����</a></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><a href="/logistics/Manager/Active/active.jsp">������̬����</a></td>
      </tr>
    </table> </td>
  </tr>
</table>
<hr align="center" width="781">
<jsp:include page="/bottom.jsp"/>
</body>
</html>
