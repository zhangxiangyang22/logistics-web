<%@ page contentType="text/html; charset=gb2312" import="java.sql.*, java.io.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="/logistics/CSS/style.css">
<title>
Enterprise page
</title>
</head>
<jsp:include page="/Manager/mtop.jsp"/>
<%!
ResultSet rs=null;
String sql;
int n;
int pagesize=10;
int rowcount=0;
int pagecount=1;
%>
<body bgcolor="#ffffff">

<table width="785" height="137" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
  <td width="785" colspan="9" height="60">
      <p align="center"><font size="7" face="华文行楷">车辆信息</font>
  </td>
  </tr>
  <tr align="center">
    <td width="11%" height="29">车牌号码</td>
   <td width="11%" height="29">车辆品名</td>
   <td width="11%" height="29">类型</td>
    <td width="11%" height="29">车辆限量</td>
    <td width="11%" height="29">已使用</td>
    <td width="11%" height="29">驾驶员驾龄</td>
    <td width="11%" height="29">运输类型</td>
    <td width="12%" height="29"><p align="center">
      详细</td></tr>    <%
    sql="select * from db_CarMessage order by IssueDate desc";
try
{
 rs=condata.executeQuery(sql);
if(!rs.next())
{
%>
<script language="javascript">
	alert("没有空车信息");
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
n=rs.getInt("Code");
%>
<tr align="center">
<td width="11%" height="29"><%=rs.getString("TradeMark")%></td>
<td width="11%" height="29"><%=rs.getString("Brand")%></td>
<td width="11%" height="29"><%=rs.getString("Style")%></td>
<td width="11%" height="29"><%=rs.getString("CarLoad")%>吨</td>
<td width="11%" height="29"><%=rs.getString("UsedTime")%>年</td>
<td width="15%" height="29"><%=rs.getString("DriverTime")%>年</td>
<td width="11%" height="29"><%=rs.getString("TranspotStyle")%></td>
<td width="12%" height="29"><a href="/logistics/Manager/Cars/mCarMessageshow.jsp?id=<%=n%>">详细</a></td>
</tr>
<%
if(!rs.next())
break;
}
%>
<tr>
    <td width="785" height="30" colspan="9" align="right">

<table width="785" align="center" cellpadding="0" cellspacing="0">
	<tr>
    <td width="785" height="30" colspan="9" align="right">
     共<%=pagecount%>页
        <a href="/logistics/Manager/Cars/mCarMessage.jsp?topage=<%=1%>">第一页</a>
        <a href="/logistics/Manager/Cars/mCarMessage.jsp?topage=<%=showpage-1%>">上一页</a>
        <a href="/logistics/Manager/Cars/mCarMessage.jsp?topage=<%=showpage+1%>">下一页</a>
        <a href="/logistics/Manager/Cars/mCarMessage.jsp?topage=<%=pagecount%>">最后一页</a>
        <span class="bgcolor">
	  <input name="topage" type="text" class="txt_grey" size="3" value="<%=showpage%>">页</span>
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
