<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="/logistics/CSS/style.css">
<title>
Manager CarMessageshow page
</title>
</head>
<%!
ResultSet rs=null;
String sql;
String userName;
int num,code;
%>
<jsp:include page="/Manager/mtop.jsp"/>
<body bgcolor="#ffffff">
<table width="785" border="1"  align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="786" height="62" colspan="4">
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
    <td width="18%" height="34" align="center"><font size="4">���ƺ��룺</font></td>
    <td width="32%" height="34" align="center"><%=rs.getString("TradeMark")%></td>
    <td width="19%" height="34" align="center"><font size="4">����Ʒ����</font></td>
    <td width="31%" height="34" align="center"><%=rs.getString("Brand")%></td>
  </tr>
  <tr>
    <td width="18%" height="36" align="center"><font size="4">�������ͣ�</font></td>
    <td width="32%" height="36" align="center"><%=rs.getString("Style")%></td>
    <td width="19%" height="36" align="center"><font size="4">����������</font></td>
    <td width="31%" height="36" align="center"><%=rs.getString("CarLoad")%>��</td>
  </tr>
  <tr>
    <td width="18%" height="37" align="center"><font size="4">��ʹ�ã�</font></td>
    <td width="32%" height="37" align="center"><%=rs.getString("UsedTime")%>��</td>
       <td width="18%" height="37" align="center"><font size="4">��ʻԱ���ƣ�</font></td>
    <td width="32%" height="37" align="center"><%=rs.getString("DriverName")%></td>
  </tr>
  <tr>
    <td width="19%" height="37" align="center"><font size="4">��ʻ֤���䣺</font></td>
    <td width="31%" height="37" align="center"><%=rs.getString("DriverTime")%></td>
    <td width="18%" height="36" align="center"><font size="4">��ʻ֤���룺</font></td>
    <td width="32%" height="36" align="center"><%=rs.getString("LicenceNumber")%></td>
  </tr>
  <tr>
    <td width="19%" height="36" align="center"><font size="4">��ʻԱ���ͣ�</font></td>
    <td width="31%" height="36" align="center"><%=rs.getString("LicenceStyle")%></td>
   <td width="19%" height="37" align="center"><font size="4">�������ͣ�</font></td>
     <td width="31%" height="37" align="center"><%=rs.getString("TranspotStyle")%></td>
</tr>
  <tr>
    <td width="18%" height="42" align="center"><font size="4">��ϵ�ˣ�</font></td>
    <td width="32%" height="42" align="center"><%=rs.getString("LinkMan")%></td>
    <td width="19%" height="42" align="center"><font size="4">��ϵ�绰��</font></td>
    <td width="31%" height="42" align="center"><%=rs.getString("LinkPhone")%></td>
  </tr>
  <tr>
    <td width="18%" height="65" align="center"><font size="4">��ע��</font></td>
    <td width="82%" height="65" colspan="3">
  <%=rs.getString("Remark")%></td>
  </tr>
  <tr>
    <td width="18%" height="42" align="center">����ʱ�䣺</td>
    <td width="32%" height="42">
      <p align="center"><%=rs.getString("IssueDate")%></td>
    <td width="19%" height="42" align="center">�����ˣ�</td>
    <td width="31%" height="42" align="center"><%=rs.getString("UserName")%></td>
  </tr>
 <tr>
      <td width="100%" height="33" colspan="4" align="center">
        <a href="/logistics/Manager/Cars/mCarMessage_change.jsp?id=<%=code%>">�޸�</a>&nbsp;&nbsp;
        <a href="/logistics/Manager/Cars/mCarMessage_delete.jsp?id=<%=code%>">ɾ��</a>
    </td>
  </tr>
<%
}
rs.close();
condata.closeStatement();
condata.closeConn();
}catch(SQLException e)
{
 System.out.print("��ѯ�쳣����");
}
%>
</table>
</body>
</html>
