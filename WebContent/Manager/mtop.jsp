<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Date"%>
<link rel="stylesheet" href="/logistics/CSS/style.css">
<table width="786" height="133" border="0" cellpadding="0" cellspacing="0" background="image/head.gif" align="center">
  <tr>
    <td colspan="9" background="image/head.gif"></td>
  </tr>
  <tr>
    <td width="215" height="31" background="image/date.JPG" align="center">
		<%
	Date date=new Date();
	String str="������"+(date.getYear()+1900)+"��"+(date.getMonth()+1)+"��"+date.getDate()+"��";
	int xx=date.getDay();
	String xq=null;
	switch(xx)
	{
	case 0:
	xq="������";
	break;
	case 1:
	xq="����һ";
	break;
	case 2:
	xq="���ڶ�";
	break;
	case 3:
	xq="������";
	break;
	case 4:
	xq="������";
	break;
	case 5:
	xq="������";
	break;
	case 6:
	xq="������";
	break;
	}
	%>
	<font color="#FFFFFF">&nbsp;<%=str%>&nbsp;&nbsp;<%=xq%></font>

	</td>
    <td width="71" height="31" align="center" background="image/banner.JPG"><a href="/logistics/Manager_index.jsp"><font color="#FFFFFF" >��վ��ҳ</font></a></td>
    <td width="71" align="center" background="image/banner.JPG"> <a href="/logistics/Manager/Active/active.jsp"><font color="#FFFFFF" >������̬</font></a></td>
    <td width="71" align="center" background="image/banner.JPG"><a href="/logistics/Manager/Knowledge/mknowledge.jsp"><font color="#FFFFFF" >����֪ʶ</font></a></td>
    <td width="71" align="center" background="image/banner.JPG"><a href="/logistics/Manager/Goods/mGoods_show.jsp"><font color="#FFFFFF" >������Ϣ</font></a></td>
    <td width="71" align="center" background="image/banner.JPG"><a href="/logistics/Manager/Cars/mCarMessage.jsp"><font color="#FFFFFF" >������Ϣ</font></a></td>
    <td width="71" align="center" background="image/banner.JPG"><a href="/logistics/Manager/Enterprise/enterprise.jsp"><font color="#FFFFFF" >��ҵ��Ϣ</font></a></td>
    <td width="71" align="center" background="image/banner.JPG"><a href="/logistics/Manager/Assistant/Assistant.jsp"><font color="#FFFFFF" >��������</font></a></td>
    <td width="74"  background="image/banner.JPG">&nbsp;&nbsp;<a href="/logistics/logout.jsp"><font color="#FFFFFF" >�˳�</font></a></td>
  </tr>
</table>



