<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
search page
</title>
</head>

<%!
ResultSet rs=null;
String sql="",rsql;
String text,style;
int n;
int pagesize=10;
int rowcount=0;
int pagecount=1;
String column[];
%>
<%
request.setCharacterEncoding("gb2312");
text=request.getParameter("text");
style=request.getParameter("style");
%>
<jsp:include page="/top.jsp"/>
<body bgcolor="#ffffff">
<%
String login=(String)session.getAttribute("login");
String username=(String)session.getAttribute("name");
if(login==null)
{
%>
<script language="javascript">
alert("您还未登录，不能浏览详细信息！！！");
<%
response.sendRedirect("/logistics/login.jsp");
%>
</script>
<%}
if(style.equals("db_CarMessage"))
{
%>
<table width="785" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
  <td width="100%" colspan="9" height="60">
      <p align="center"><font size="7" face="华文行楷">车辆信息搜索结果</font>
  </td>
  </tr>
  <tr align="center">
    <td width="11%" height="29"><font face="隶书" size="3">车牌号码</font></td>
   <td width="11%" height="29"><font size="3" face="隶书">车辆品名</font></td>
   <td width="11%" height="29"><font face="隶书" size="3">类型</font></td>
    <td width="11%" height="29"><font face="隶书" size="3">车辆限量</font></td>
    <td width="11%" height="29"><font face="隶书" size="3">已使用</font></td>
    <td width="11%" height="29"><font face="隶书" size="3">驾驶员驾龄</font></td>
    <td width="11%" height="29"><font face="隶书" size="3">运输类型</font></td>
    <td width="12%" height="29"><p align="center">
  <font face="隶书" size="3">详细</font></td></tr>
<%

try
{
if(text.equals("关键字"))
{
 rsql="select * from  "+style;
}else
{

String sql1="select * from  "+style;
rs=condata.executeQuery(sql1);
ResultSetMetaData meta=rs.getMetaData();
int col=meta.getColumnCount();
for(int i=1;i<col;++i){
int x;
x=i+1;
String str=meta.getColumnName(x);
if(x==col){
String sum=str+" like '%"+text+"%'";
sql=sql+sum;
}else{
String sum=str+" like '%"+text+"%'or ";
sql=sql+sum;
}
}
rsql="select * from "+style+" where "+sql;
sql="";
}
rs=null;
rs=condata.executeQuery(rsql);
if(!rs.next())
{
%>
<script language="javascript">
	alert("没有车辆信息");
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
<td width="11%" height="29"><font face="隶书" size="3"><%=rs.getString("TradeMark")%></font></td>
<td width="11%" height="29"><font face="隶书" size="3"><%=rs.getString("Brand")%></font></td>
<td width="11%" height="29"><font face="隶书" size="3"><%=rs.getString("Style")%></font></td>
<td width="11%" height="29"><font face="隶书" size="3"><%=rs.getString("CarLoad")%>吨</font></td>
<td width="11%" height="29"><font face="隶书" size="3"><%=rs.getString("UsedTime")%>年</font></td>
<td width="15%" height="29"><font face="隶书" size="3"><%=rs.getString("DriverTime")%>年</font></td>
<td width="11%" height="29"><font face="隶书" size="3"><%=rs.getString("TranspotStyle")%></font></td>
<td width="12%" height="29"><font face="隶书" size="3">
<a href="#" onClick="window.open('/logistics/Search/searchshow.jsp?id=<%=n%>&style=<%=style%>','','width=785,height=450');">详细</a></font></td>
</tr>
<%
if(!rs.next())
break;
}
%>
<tr>
    <td width="100%" height="30" colspan="9" align="right">

<table width="100%" align="center">
	<tr>
    <td width="100%" height="30" colspan="9" align="right">
     共<%=pagecount%>页
        <a href="/logistics/Search/search.jsp?topage=<%=1%>">第一页</a>
        <a href="/logistics/Search/search.jsp?topage=<%=showpage-1%>">上一页</a>
        <a href="/logistics/Search/search.jsp?topage=<%=showpage+1%>">下一页</a>
        <a href="/logistics/Search/search.jsp?topage=<%=pagecount%>">最后一页</a>
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
<%
}else if(style.equals("db_GoodsMeg"))
{
%>
<table width="785" height="137" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
  <td width="100%" colspan="9" height="60">
      <p align="center"><font size="7" face="华文行楷">货物信息搜索结果</font>
  </td>
  </tr>
  <tr align="center">
    <td width="11%" height="29"><font face="隶书" size="3">货物类型</font></td>
    <td width="11%" height="29"><font face="隶书" size="3">货物名称</font></td>
    <td width="11%" height="29"><font face="隶书" size="3">货物数量</font></td>
    <td width="11%" height="29"><font face="隶书" size="3">数量单位</font></td>
    <td width="11%" height="29"><font face="隶书" size="3">起始省份</font></td>
    <td width="11%" height="29"><font face="隶书" size="3">起始城市</font></td>
    <td width="11%" height="29"><font face="隶书" size="3">抵达省份</font></td>
    <td width="11%" height="29"><font face="隶书" size="3">抵达城市</font></td>
    <td width="12%" height="29"><p align="center">
  <font face="隶书" size="3">详细</font></td></tr>
<%
try
{
if(text.equals("关键字"))
{
 rsql="select * from  "+style;
}else
{
String sql1="select * from  "+style;
rs=condata.executeQuery(sql1);
ResultSetMetaData meta=rs.getMetaData();
int col=meta.getColumnCount();
for(int i=0;i<col;++i){
int x;
x=i+1;
String str=meta.getColumnName(x);
if(x==col){
sql=sql+" "+str+" like '%"+text+"%'";
}else{
sql=sql+" "+str+" like '%"+text+"%'or ";
}
}
rsql="select * from "+style+" where "+sql;
sql="";
}
rs=null;
rs=condata.executeQuery(rsql);
if(!rs.next())
{
%>
<script language="javascript">
	alert("没有货物信息");
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
<td width="11%" height="29"><font face="隶书" size="3"><%=rs.getString("GoodsStyle")%></font></td>
<td width="11%" height="29"><font face="隶书" size="3"><%=rs.getString("GoodsName")%></font></td>
<td width="11%" height="29"><font face="隶书" size="3"><%=rs.getString("GoodsNumber")%></font></td>
<td width="11%" height="29"><font face="隶书" size="3"><%=rs.getString("GoodsUnit")%></font></td>
<td width="11%" height="29"><font face="隶书" size="3"><%=rs.getString("StartOmit")%></font></td>
<td width="11%" height="29"><font face="隶书" size="3"><%=rs.getString("StartCity")%></font></td>
<td width="11%" height="29"><font face="隶书" size="3"><%=rs.getString("EndOmit")%></font></td>
<td width="11%" height="29"><font face="隶书" size="3"><%=rs.getString("EndCity")%></font></td>
<td width="12%" height="29"> <p align="center"><font face="隶书" size="3">
<a href="#" onClick="window.open('/logistics/Search/searchshow.jsp?id=<%=n%>&style=<%=style%>','','width=785,height=450');">详细</a></font></td>
</tr>
<%
if(!rs.next())
break;
}
%>
<tr>
    <td width="100%" height="30" colspan="9" align="right">

<table width="100%" align="center">
	<tr>
    <td width="100%" height="30" colspan="9" align="right">
        共<%=pagecount%>页&nbsp;&nbsp;
        <a href="/logistics/Search/search.jsp?topage=<%=1%>">第一页</a>
        <a href="/logistics/Search/search.jsp?topage=<%=showpage-1%>">上一页</a>
        <a href="/logistics/Search/search.jsp?topage=<%=showpage+1%>">下一页</a>
        <a href="/logistics/Search/search.jsp?topage=<%=pagecount%>">最后一页</a>
        <span class="bgcolor">
	  <input name="topage" type="text" class="txt_grey" size="5" value="<%=showpage%>">
	  页</span>
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
<%
}else if(style.equals("tb_Enterprise"))
{
%>
<table width="785" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
  <td width="100%" colspan="9" height="60">
      <p align="center"><font size="7" face="华文行楷">企业信息搜索结果</font>
  </td>
  </tr>
  <tr align="center">
    <td width="16%" height="29"><font face="隶书" size="3">企业类型</font></td>
   <td width="16%" height="29"><font face="隶书" size="3">企业名称</font></td>
   <td width="17%" height="29"><font face="隶书" size="3">经营范围</font></td>
    <td width="17%" height="29"><font face="隶书" size="3">所属区域</font></td>
    <td width="17%" height="29"><font face="隶书" size="3">地址</font></td> 
    <td width="16%" height="29"><p align="center">
  <font face="隶书" size="3">详细</font></td></tr>
<%

try
{
if(text.equals("关键字"))
{
 rsql="select * from  "+style;
}else
{

String sql1="select * from  "+style;
rs=condata.executeQuery(sql1);
ResultSetMetaData meta=rs.getMetaData();
int col=meta.getColumnCount();
for(int i=1;i<col;++i){
int x;
x=i+1;
String str=meta.getColumnName(x);
if(x==col){
String sum=str+" like '%"+text+"%'";
sql=sql+sum;
}else{
String sum=str+" like '%"+text+"%'or ";
sql=sql+sum;
}
}
rsql="select * from "+style+" where "+sql;
sql="";
}
rs=null;
rs=condata.executeQuery(rsql);
if(!rs.next())
{
%>
<script language="javascript">
	alert("没有企业信息");
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
<td width="16%" height="29"><font face="隶书" size="3"><%=rs.getString("EnterpriseSort")%></font></td>
<td width="16%" height="29"><font face="隶书" size="3"><%=rs.getString("EnterpriseName")%></font></td>
<td width="17%" height="29"><font face="隶书" size="3"><%=rs.getString("Operation")%></font></td>
<td width="17%" height="29"><font face="隶书" size="3"><%=rs.getString("WorkArea")%></font></td>
<td width="16%" height="29"><font face="隶书" size="3"><%=rs.getString("Address")%></font></td>
<td width="17%" height="29"><font face="隶书" size="3"><a href="#" onClick="window.open('/logistics/Search/searchshow.jsp?id=<%=n%>&style=<%=style%>','','width=786,height=450');">详细</a></font></td>
</tr>
<%
if(!rs.next())
break;
}
%>
<tr>
    <td width="100%" height="30" colspan="9" align="right">

<table width="100%" align="center">
	<tr>
    <td width="100%" height="30" colspan="9" align="right">
     共<%=pagecount%>页
        <a href="/logistics/Search/search.jsp?topage=<%=1%>">第一页</a>
        <a href="/logistics/Search/search.jsp?topage=<%=showpage-1%>">上一页</a>
        <a href="/logistics/Search/search.jsp?topage=<%=showpage+1%>">下一页</a>
        <a href="/logistics/Search/search.jsp?topage=<%=pagecount%>">最后一页</a>
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
<%
}
%>
</body>
</html>
