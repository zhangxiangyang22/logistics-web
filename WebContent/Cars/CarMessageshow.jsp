<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
CarMessageshow
</title>
</head>
<%!
ResultSet rs=null;
String sql;
String userName,username;
String login;
int code;
%>
<jsp:include page="/top.jsp"/>
<body bgcolor="#ffffff">
<%
login=(String)session.getAttribute("login");
 username=(String)session.getAttribute("name");
if(login==null)
{
%>
<script language="javascript">
alert("��δ��¼");
<%
response.sendRedirect("/logistics/login.jsp");
%>
</script>
<%}
%>
<table width="786" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="62" colspan="4">
      <p align="center"><font size="7" face="����">������Ϣչʾ</font></td>
  </tr>
<%

sql="select * from db_CarMessage where Code="+request.getParameter("id");
try
{
rs=condata.executeQuery(sql);
if(rs.next())
{
code=rs.getInt("Code");
%>
  <tr>
    <td width="18%" height="34" align="center"><font size="4">���ƺ�</font></td>
    <td width="32%" height="34" align="center"><%=rs.getString("TradeMark")%></td>
    <td width="19%" height="34" align="center"><font size="4">��Ʒ��</font></td>
    <td width="31%" height="34" align="center"><%=rs.getString("Brand")%></td>
  </tr>
  <tr>
    <td width="18%" height="36" align="center"><font size="4">��������</font></td>
    <td width="32%" height="36" align="center"><%=rs.getString("Style")%></td>
    <td width="19%" height="36" align="center"><font size="4">��������</font></td>
    <td width="31%" height="36" align="center"><%=rs.getString("CarLoad")%>��</td>
  </tr>
  <tr>
    <td width="18%" height="37" align="center"><font size="4">ʹ��ʱ��</font></td>
    <td width="32%" height="37" align="center"><%=rs.getString("UsedTime")%>��</td>
       <td width="18%" height="37" align="center"><font size="4">��ʻԱ����</font></td>
    <td width="32%" height="37" align="center"><%=rs.getString("DriverName")%></td>
  </tr>
  <tr>
    <td width="19%" height="37" align="center"><font size="4">��ʻʱ��</font></td>
    <td width="31%" height="37" align="center"><%=rs.getString("DriverTime")%></td>
    <td width="18%" height="36" align="center"><font size="4">���պ���</font></td>
    <td width="32%" height="36" align="center"><%=rs.getString("LicenceNumber")%></td>
  </tr>
  <tr>
    <td width="19%" height="36" align="center"><font size="4">��������</font></td>
    <td width="31%" height="36" align="center"><%=rs.getString("LicenceStyle")%></td>
   <td width="19%" height="37" align="center"><font size="4">��������</font></td>
     <td width="31%" height="37" align="center"><%=rs.getString("TranspotStyle")%></td>
</tr>
  <tr>
    <td width="18%" height="42" align="center"><font size="4">��ϵ��</font></td>
    <td width="32%" height="42" align="center"><%=rs.getString("LinkMan")%></td>
    <td width="19%" height="42" align="center"><font size="4">��ϵ�绰</font></td>
    <td width="31%" height="42" align="center"><%=rs.getString("LinkPhone")%></td>
  </tr>
  <tr>
    <td width="18%" height="65" align="center"><font size="4">��ע</font></td>
    <td width="82%" height="65" colspan="3">
    <%=rs.getString("Remark")%></td>
  </tr>
  <tr>
    <td width="18%" height="42" align="center">����ʱ��</td>
    <td width="32%" height="42">
      <p align="center"><%=rs.getString("IssueDate")%></td>
    <td width="19%" height="42" align="center">������</td>
  <%userName=rs.getString("UserName");%>
    <td width="31%" height="42" align="center"><%=userName%></td>
  </tr>
<%
 if(userName.equals(username))
{
 %>
 <tr>
      <td width="100%" height="33" colspan="4" align="center">
        <a href="/logistics/Cars/CarMessage_change.jsp?id=<%=code%>">�޸�</a>&nbsp;&nbsp;
        <a href="/logistics/Cars/CarMessage_delete.jsp?id=<%=code%>">ɾ��</a>
    </td>
  </tr>
<%
}
}
rs.close();
condata.closeStatement();
condata.closeConn();
}catch(SQLException e)
{
 System.out.print("��ѯ�쳣");
}
%>
</table>
</body>
</html>
