<%@ page contentType="text/html; charset=gb2312" import="java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="/logistics/CSS/style.css">
<title>
Goods_show page
</title>
</head>
<%!
ResultSet rs=null;
String sql,sqlshow;
int n;
int pagesize=10;
int rowcount=0;
int pagecount=1;
%>
<jsp:include page="/Manager/mtop.jsp"/>
<body bgcolor="#ffffff">
<table width="783" height="137" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
  <td width="100%" colspan="9" height="60">
      <p align="center"><font size="7" face="�����п�">������Ϣ</font>
  </td>
  </tr>
  <tr align="center">
    <td width="11%" height="29"><font face="����" size="3">��������</font></td>
    <td width="11%" height="29"><font face="����" size="3">��������</font></td>
    <td width="11%" height="29"><font face="����" size="3">��������</font></td>
    <td width="11%" height="29"><font face="����" size="3">������λ</font></td>
    <td width="11%" height="29"><font face="����" size="3">��ʼʡ��</font></td>
    <td width="11%" height="29"><font face="����" size="3">��ʼ����</font></td>
    <td width="11%" height="29"><font face="����" size="3">�ִ�ʡ��</font></td>
    <td width="11%" height="29"><font face="����" size="3">�ִ����</font></td>
    <td width="12%" height="29"><p align="center"><font face="����" size="3">��ϸ</font></td>
  </tr>  <%
    sql="select * from db_GoodsMeg order by IssueDate desc";
try
{
 rs=condata.executeQuery(sql);
if(!rs.next())
{
%>
<script language="javascript">
	alert("û�л�����Ϣ");
        history.back();
</script>
<%
}else
{
rs.last();
rowcount=rs.getRow();
int showpage=1;
pagecount=((rowcount%pagesize)==0?(rowcount/pagesize):(rowcount/pagesize)+1);
 String topage=request.getParameter("topage");
if(topage!=null)
{
showpage=Integer.parseInt(topage);
if(showpage>pagecount){
  showpage=pagecount;
  }else if(showpage<=0){
  showpage=1;
  }
}
rs.absolute((showpage-1)*pagesize+1);
for(int i=1;i<=pagesize;i++)
{
n=rs.getInt("ID");
%>
<tr align="center">
<td width="11%" height="29"><font face="����" size="3"><%=rs.getString("GoodsStyle")%></font></td>
<td width="11%" height="29"><font face="����" size="3"><%=rs.getString("GoodsName")%></font></td>
<td width="11%" height="29"><font face="����" size="3"><%=rs.getString("GoodsNumber")%></font></td>
<td width="11%" height="29"><font face="����" size="3"><%=rs.getString("GoodsUnit")%></font></td>
<td width="11%" height="29"><font face="����" size="3"><%=rs.getString("StartOmit")%></font></td>
<td width="11%" height="29"><font face="����" size="3"><%=rs.getString("StartCity")%></font></td>
<td width="11%" height="29"><font face="����" size="3"><%=rs.getString("EndOmit")%></font></td>
<td width="11%" height="29"><font face="����" size="3"><%=rs.getString("EndCity")%></font></td>
<td width="12%" height="29">
    <p align="center"><font face="����" size="3"><a href="/logistics/Manager/Goods/mGoods_xiangxi.jsp?id=<%=n%>"><u>��ϸ</u></a></font></td>
</tr>
<%
if(!rs.next())
break;
}
%>
<tr>
    <td width="786" height="30" colspan="9" align="right">
<table width="786" align="center">
	<tr>
    <td width="786" height="30" colspan="9" align="right">
        ��<%=pagecount%>ҳ&nbsp;&nbsp;
        <a href="/logistics/Manager/Goods/mGoods_show.jsp?topage=<%=1%>"><u>��һҳ</u></a>
        <a href="/logistics/Manager/Goods/mGoods_show.jsp?topage=<%=showpage-1%>"><u>��һҳ</u></a>
        <a href="/logistics/Manager/Goods/mGoods_show.jsp?topage=<%=showpage+1%>"><u>��һҳ</u></a>
        <a href="/logistics/Manager/Goods/mGoods_show.jsp?topage=<%=pagecount%>"><u>���һҳ</u></a>
        <span class="bgcolor">
	  <input name="topage" type="text" class="txt_grey" size="3" value="<%=showpage%>">ҳ</span>
</td>
</tr>
</table>
</td>
  </tr>
<%
}
condata.closeConn();
}catch(Exception e)
{e.printStackTrace();}
%>
</table>
</body>
</html>
