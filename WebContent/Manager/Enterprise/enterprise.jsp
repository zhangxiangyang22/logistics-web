<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="/logistics/CSS/style.css">
<title>
enterprise
</title>
</head>
<%!
ResultSet rs=null;
String sql,login;
int code;
int pagesize=10;
int rowcount=0;
int pagecount=1,n;
int showpage=1;
%>
<jsp:include page="/Manager/mtop.jsp"/>
<body bgcolor="#ffffff">
<table border="1" width="784" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
<tr>
    <td width="784" align="center" colspan="6" height="32"><font size="6" face="隶书">企业信息</font></td>
  </tr>
  <tr>
    <td width="17%" align="center" height="27">企业类型</td>
    <td width="17%" align="center" height="27">企业名称</td>
    <td width="16%" align="center" height="27">经营范围</td>
    <td width="16%" align="center" height="27">所属区域</td>
    <td width="16%" align="center" height="27">地址</td>
    <td width="17%" align="center" height="27">详细</td>
  </tr>
<%
 sql="select * from tb_Enterprise order by IssueDate desc";
try
{
 rs=condata.executeQuery(sql);
if(!rs.next())
{
%>
<script language="javascript">
	alert("没有企业信息");
</script>
<%
}else
{
rs.last();
rowcount=rs.getRow();
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
code=rs.getInt("ID");
%>
 <tr>
    <td width="17%" align="center" height="27"><%=rs.getString("EnterpriseSort")%></td>
    <td width="17%" align="center" height="27"><%=rs.getString("EnterpriseName")%></td>
    <td width="17%" align="center" height="27"><%=rs.getString("Operation")%></td>
    <td width="17%" align="center" height="27"><%=rs.getString("WorkArea")%></td>
    <td width="18%" align="center" height="27"><%=rs.getString("Address")%></td>
    <td width="17%" align="center" height="27"><a href="/logistics/Manager/Enterprise/enterpriseShow.jsp?id=<%=code%>">详细</a>　
&nbsp;<a href="/logistics/Manager/Enterprise/delete.jsp?id=<%=code%>">删除</a></td>

 </tr>
<%
if(!rs.next())
break;
}}
}catch(Exception e)
{out.println("查询异常!!!");}
%>
<tr>
    <td width="784" height="30" colspan="9" align="right">

<table width="784" align="center">
	<tr>
    <td width="783" height="30" colspan="6" align="right">
        共<%=pagecount%>页&nbsp;&nbsp;
        <a href="/logistics/Manager/Enterprise/enterprise.jsp?topage=<%=1%>">第一页</a>
        <a href="/logistics/Manager/Enterprise/enterprise.jsp?topage=<%=showpage-1%>">上一页</a>
        <a href="/logistics/Manager/Enterprise/enterprise.jsp?topage=<%=showpage+1%>">下一页</a>
        <a href="/logistics/Manager/Enterprise/enterprise.jsp?topage=<%=pagecount%>">最后一页</a>
        <span class="bgcolor">
	  <input name="topage" type="text" class="txt_grey" size="5" value="<%=showpage%>">
	  页</span>
</td>
</tr>
</table>
</body>
</html>
