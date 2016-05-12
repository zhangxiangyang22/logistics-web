<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
searchshow page
</title>
</head>
<%!
ResultSet rs=null;
String sql;
String userName;
int num,code;
String table;
%>
<%
table=request.getParameter("style");
%>
<body bgcolor="#ffffff">

<%
if(table.equals("db_CarMessage"))
{
%>
<table width="785" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="62" colspan="4">
      <p align="center"><font size="7" face="隶书">车辆信息展示</font></td>
  </tr>
<%

try
{
sql="select * from  "+table+"  where Code="+request.getParameter("id");
rs=condata.executeQuery(sql);
if(rs.next())
{
%>
  <tr align="center">
    <td width="18%" height="34"><font size="4">车牌号码：</font></td>
    <td width="32%" height="34"><%=rs.getString("TradeMark")%></td>
    <td width="19%" height="34"><font size="4">车辆品名：</font></td>
    <td width="31%" height="34"><%=rs.getString("Brand")%></td>
  </tr>
  <tr align="center">
    <td width="18%" height="36"><font size="4">车辆类型：</font></td>
    <td width="32%" height="36"><%=rs.getString("Style")%></td>
    <td width="19%" height="36"><font size="4">车辆限量：</font></td>
    <td width="31%" height="36"><%=rs.getString("CarLoad")%>吨</td>
  </tr>
  <tr align="center">
    <td width="18%" height="37"><font size="4">已使用：</font></td>
    <td width="32%" height="37"><%=rs.getString("UsedTime")%>年</td>
       <td width="18%" height="37"><font size="4">驾驶员名称：</font></td>
    <td width="32%" height="37"><%=rs.getString("DriverName")%></td>
  </tr>
  <tr align="center">
    <td width="19%" height="37"><font size="4">驾驶证驾龄：</font></td>
    <td width="31%" height="37"><%=rs.getString("DriverTime")%>年</td>
    <td width="18%" height="36"><font size="4">驾驶证号码：</font></td>
    <td width="32%" height="36"><%=rs.getString("LicenceNumber")%></td>
  </tr>
  <tr align="center">
    <td width="19%" height="36"><font size="4">驾驶员类型：</font></td>
    <td width="31%" height="36"><%=rs.getString("LicenceStyle")%></td>
   <td width="19%" height="37"><font size="4">运输类型：</font></td>
     <td width="31%" height="37"><%=rs.getString("TranspotStyle")%></td>
</tr>
  <tr align="center">
    <td width="18%" height="42"><font size="4">联系人：</font></td>
    <td width="32%" height="42"><%=rs.getString("LinkMan")%></td>
    <td width="19%" height="42"><font size="4">联系电话：</font></td>
    <td width="31%" height="42"><%=rs.getString("LinkPhone")%></td>
  </tr>
  <tr align="center">
    <td width="18%" height="65"><font size="4">备注：</font></td>
    <td width="82%" height="65" colspan="3">
  <%=rs.getString("Remark")%></td>
  </tr>
  <tr align="center">
    <td width="18%" height="42">发布时间：</td>
    <td width="32%" height="42">
    <p align="center"><%=rs.getString("IssueDate")%></td>
    <td width="19%" height="42">发布人：</td>
    <td width="31%" height="42"><%=rs.getString("UserName")%></td>
  </tr>
<tr>
    <td width="100%" height="62" colspan="4">
      <p align="center">  <a href="#" onClick="window.close()">关闭窗口</a> </td>
  </tr>
<%
}
rs.close();
condata.closeStatement();
condata.closeConn();
}catch(SQLException e)
{
 System.out.print("查询异常！！");
}
%>
</table>
<%
}else if(table.equals("db_GoodsMeg"))
{
sql="select * from  "+table+"  where ID="+request.getParameter("id");
%>
<table width="785" height="377" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="52" colspan="4">
      <p align="center"><font face="隶书" size="7">货物详细信息</font></td>
  </tr>
<%try
{
rs=condata.executeQuery(sql);
if(rs.next())
{
num=rs.getInt("ID");
%>
<tr align="center">
    <td width="17%" height="29">货物类型：</td>
    <td width="36%" height="29"><%=rs.getString("GoodsStyle")%></td>
    <td width="17%" height="29">货物名称：</td>
    <td width="30%" height="29"><%=rs.getString("GoodsName")%></td>
  </tr>
  <tr align="center">
    <td width="17%" height="29">货物数量：</td>
    <td width="36%" height="29"><%=rs.getString("GoodsNumber")%> </td>
    <td width="17%" height="29">数量单位：</td>
    <td width="30%" height="29">  <%=rs.getString("GoodsUnit")%></td>
  </tr>
  <tr align="center">
    <td width="17%" height="29">起始省份：</td>
    <td width="36%" height="29"><%=rs.getString("StartOmit")%></td>
    <td width="17%" height="29">起始城市：</td>
    <td width="30%" height="29"><%=rs.getString("StartCity")%></td>
  </tr>
  <tr align="center">
    <td width="17%" height="29">抵达省份：</td>
    <td width="36%" height="29"><%=rs.getString("EndOmit")%></td>
    <td width="17%" height="29">抵达城市：</td>
    <td width="30%" height="29"><%=rs.getString("EndCity")%></td>
  </tr>
  <tr align="center">
    <td width="17%" height="30">运输类型：</td>
    <td width="36%" height="30"> <%=rs.getString("Style")%></td>
    <td width="17%" height="30">运输时间：</td>
    <td width="30%" height="30"> <%=rs.getString("TransportTime")%></td>
  </tr>
  <tr align="center">
    <td width="17%" height="29">联系电话：</td>
    <td width="36%" height="29"><%=rs.getString("Phone")%></td>
    <td width="17%" height="29">联系人：</td>
    <td width="30%" height="29"><%=rs.getString("Link")%> </td>
  </tr>
  <tr align="center">
    <td width="17%" height="31">发布时间：</td>
    <td width="36%" height="31" colspan="3" align="left"><%=rs.getDate("IssueDate")%></td>
  
  </tr>
  <tr align="center">
    <td width="17%" height="1">备注：</td>
    <td width="83%" height="1" colspan="3">
    <p align="left"><%=rs.getString("Remark")%></td>
  </tr>
  <tr align="center">
    <td width="17%" height="52">车辆要求：</td>
    <td width="83%" height="52" colspan="3">
    <p align="left"><%=rs.getString("Request")%></td>
  </tr>
<tr align="center">
 <%
userName=rs.getString("UserName");
 %>
    <td width="17%" height="31">发布人：</td>
    <td width="36%" height="31" colspan="3"><%=userName%></td>
  </tr>
  <tr>
    <td width="100%" height="52" colspan="4">
      <p align="center">  <a href="#" onClick="window.close()">关闭窗口</a> </td>
  </tr>
<%
}
rs.close();
condata.closeStatement();
condata.closeConn();
}catch(SQLException e)
{
 System.out.println("查询异常！！");
}
%>
</table>
<%
}else if(table.equals("tb_Enterprise"))
{
sql="select * from  "+table+"  where ID="+request.getParameter("id");
%>
<table width="785" height="377" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="52" colspan="4">
      <p align="center"><font face="隶书" size="7">企业详细信息</font></td>
  </tr>
<%try
{
rs=condata.executeQuery(sql);
if(rs.next())
{
num=rs.getInt("ID");
%>
<tr align="center">
    <td width="115" height="36">企业类型：</td>
    <td width="265" height="36"><%=rs.getString("EnterpriseSort")%></td>
    <td width="125" height="36">企业名称：</td>
    <td width="253" height="36"><%=rs.getString("EnterpriseName")%></td>
  </tr>
  <tr align="center">
    <td width="115" height="35">经营范围</td>
    <td width="265" height="35"><%=rs.getString("Operation")%></td>
    <td width="125" height="35">所属区域：</td>
    <td width="253" height="35"><%=rs.getString("WorkArea")%></td>
  </tr>
  <tr align="center">
    <td width="115" height="38">企业地址</td>
    <td width="265" height="38"><%=rs.getString("Address")%></td>
    <td width="125" height="38">联系电话：</td>
    <td width="253" height="38"><%=rs.getString("Phone")%></td>
  </tr>
  <tr align="center">
    <td width="115" height="34">联系人：</td>
    <td width="265" height="34"><%=rs.getString("LinkMan")%></td>
    <td width="125" height="34">手机号：</td>
    <td width="253" height="34"><%=rs.getString("HandSet")%></td>
  </tr>
  <tr align="center">
    <td width="115" height="35">传真号：</td>
    <td width="265" height="35"><%=rs.getString("Fax")%></td>
    <td width="125" height="35">邮件网址</td>
    <td width="253" height="35"><%=rs.getString("Email")%></td>
  </tr>
  <tr align="center">
    <td width="115" height="34">企业网址：</td>
    <td width="265" height="34"><%=rs.getString("Http")%></td>
    <td width="125" height="34">类型介绍：</td>
    <td width="253" height="34"><%=rs.getString("Intro")%></td>
  </tr>
<tr align="center">
    <td width="115" height="34">发布时间：</td>
    <td width="265" height="34"><%=rs.getString("IssueDate")%></td>
    <td width="125" height="34">发布人：</td>
   <td width="253" height="34"><%=rs.getString("UserName")%></td>
  </tr>
<tr>
    <td width="785" height="34" colspan="4" align="center">                 
     <a href="#" onClick="window.close()">关闭窗口</a>      
</td>
</tr>
<%
}
rs.close();
condata.closeStatement();
condata.closeConn();
}catch(SQLException e)
{
 System.out.println("查询异常！！");
}
%>
</table>
<%
}
%>
</body>
</html>
