<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
CarMessage_change page
</title>
</head>
<Script language="javascript">
function check()
{
 if(form1.numbers.value=="")
{
alert("�����복�ƺţ���");
form1.numbers.focus();
return false;
}
if(form1.type.value=="")
{
alert("�����복�����ͣ�1");
form1.type.focus();
return false;
}
if(form1.carname.value=="")
{
alert("�����복Ʒ������");
form1.carname.focus();
return false;
}
if(form1.loads.value=="")
{
alert("�����복�����أ�����");
form1.loads.focus();
return false;
}
if(form1.usetime.value=="")
{
alert("�����복��ʹ��ʱ�䣡����");
form1.usetime.focus();
return false;
}
if(form1.transtyle.value=="")
{
alert("�������������ͣ�����");
form1.style.focus();
return false;
}
if(form1.name.value=="")
{
alert("�������ʻԱ��������1");
form1.name.focus();
return false;
}
if(form1.number.value=="")
{
alert("�������֤���룡����");
form1.number.focus();
return false;
}
if(form1.styles.value=="")
{
alert("�������֤���ͣ�����");
form1.styles.focus();
return false;
}
if(form1.time.value=="")
{
alert("�������ʻԱ���䣡��");
form1.time.focus();
return false;
}
if(form1.linkman.value=="")
{alert("��������ϵ������������");
form1.linkman.focus();
return false;
}
if(form1.phone.value=="")
{
alert("��������ϵ�绰����");
form1.phone.focus();
return false;
}
}
</Script>

  <tr>
    <td width="18%" height="34"><font size="4">���ƺ�</font></td>
    <td width="32%" height="34" align="center"><input type="text" readonly="yes"  name="numbers" size="20"value="<%=rs.getString("TradeMark")%>"></td>
    <td width="19%" height="34"><font size="4">��Ʒ��</font></td>
    <td width="31%" height="34" align="center"><input type="text" name="carname" size="20"value="<%=rs.getString("Brand")%>"></td>
  </tr>
  <tr>
    <td width="18%" height="36"><font size="4">��������</font></td>
    <td width="32%" height="36" align="center"><input type="text" name="type" size="20"value="<%=rs.getString("Style")%>"></td>
    <td width="19%" height="36"><font size="4">����</font></td>
    <td width="31%" height="36" align="center"><input type="text" name="loads" size="20"value="<%=rs.getString("CarLoad")%>">��</td>
  </tr>
  <tr>
    <td width="18%" height="37"><font size="4">ʹ��ʱ��</font></td>
    <td width="32%" height="37" align="center"><input type="text" name="usetime" size="20"value="<%=rs.getString("UsedTime")%>">��</td>
       <td width="18%" height="37"><font size="4">��ʻԱ����</font></td>
    <td width="32%" height="37" align="center"><input type="text" name="name" size="20"value="<%=rs.getString("DriverName")%>"></td>
  </tr>
  <tr>
    <td width="19%" height="37"><font size="4">����</font></td>
    <td width="31%" height="37" align="center"><input type="text" name="time" size="20"value="<%=rs.getString("DriverTime")%>"></td>
    <td width="18%" height="36"><font size="4">��ʻ֤����</font></td>
    <td width="32%" height="36" align="center"><input type="text" name="number" size="20"value="<%=rs.getString("LicenceNumber")%>"></td>
  </tr>
  <tr>
    <td width="19%" height="36"><font size="4">��ʻ֤����</font></td>
    <td width="31%" height="36" align="center"><input type="text" name="styles" size="20"value="<%=rs.getString("LicenceStyle")%>"></td>
   <td width="19%" height="37"><font size="4">��������</font></td>
     <td width="31%" height="37" align="center"><input type="text" name="transtyle" size="20"value="<%=rs.getString("TranspotStyle")%>"></td>
</tr>
  <tr>
    <td width="18%" height="42"><font size="4">��ϵ��</font></td>
    <td width="32%" height="42" align="center"><input type="text" name="linkman" size="20"value="<%=rs.getString("LinkMan")%>"></td>
    <td width="19%" height="42"><font size="4">��ϵ�绰</font></td>
    <td width="31%" height="42" align="center"><input type="text" name="phone" size="20"value="<%=rs.getString("LinkPhone")%>"></td>
  </tr>
  <tr>
    <td width="18%" height="65"><font size="4">��ע</font></td>
    <td width="82%" height="65" colspan="3">
   <textarea rows="3" name="remark" cols="76">
  <%=rs.getString("Remark")%></textarea></td>
  </tr>
  <tr>
    <td width="18%" height="42">����ʱ��</td>
    <td width="32%" height="42">
      <p align="center"><input type="text" name="issuedate" size="20"value="<%=rs.getString("IssueDate")%>"></td>
    <td width="19%" height="42">ID:</td>
    <td width="31%" height="42"><input type="hidden" name="numb" value="<%=code%>">  </td>
  </tr>
<tr>
    <tr>
    <td width="18%" height="42">������</td>
    <td width="32%" height="42">
      <p align="center">
<input type="hidden" name="user" size="20"value="<%=rs.getString("UserName")%>"></td>
  </tr>
<tr>
 <td width="786" height="40" colspan="4">
    <p align="center">
 <input type="submit" name="show" value="�޸�" onClick="return check()">&nbsp;&nbsp;
  <input type="submit" name="reset" value="��д"> &nbsp;&nbsp; 
  <input type="button" name="back" value="" onClick="history.back()">
</td>
</tr>

<%
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
</form>
</body>
</html>
