<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<link rel="stylesheet" href="/logistics/CSS/style.css">
<title>
mMember  page
</title>
</head>
<%!
ResultSet rs=null;
String sql;
int code;
int pagesize=10;
int rowcount=0;
int pagecount=1;
%>
<jsp:include page="/Manager/mtop.jsp"/>
<body bgcolor="#ffffff">
<table border="1" width="785" height="123" align="center">
  <tr>
    <td width="100%" height="54" colspan="11" align="center">
 <font size="6" face="����">��Ա������Ϣ�޸�</font></td>
  </tr>
  <tr>
    <td width="9%" height="16" align="center">ID</td>
    <td width="9%" height="16" align="center">����</td>
    <td width="9%" height="16" align="center">����</td>
    <td width="9%" height="16" align="center">Email</td>
    <td width="9%" height="16" align="center">�Ա�</td>
    <td width="9%" height="16" align="center">�绰</td>
    <td width="9%" height="16" align="center">����</td>
    <td width="9%" height="16" align="center">��</td>
    <td width="9%" height="16" align="center">������</td>
    <td width="9%" height="16" align="center">�޸�</td>
    <td width="10%" height="16" align="center">ɾ��</td>
  </tr>
<%
sql="select * from db_Customer";
try
{
rs=condata.executeQuery(sql);
if(!rs.next())
{
%>
<script language="javascript">
	alert("û�л�Ա��Ϣ����");
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
code=rs.getInt("ID");
%>
 <tr>
    <td width="9%" height="35" align="center"><%=code%></td>
    <td width="9%" height="35" align="center"><%=rs.getString("Name")%></td>
    <td width="9%" height="35" align="center"><%=rs.getString("Password")%></td>
    <td width="9%" height="35" align="center"><%=rs.getString("Email")%></td>
    <td width="9%" height="35" align="center"><%=rs.getString("Sex")%></td>
    <td width="9%" height="35" align="center"><%=rs.getString("Phone")%></td>
    <td width="9%" height="35" align="center"><%=rs.getString("Question")%></td>
    <td width="9%" height="35" align="center"><%=rs.getString("Result")%></td>
    <td width="9%" height="35" align="center"><%=rs.getString("IssueDate")%></td>
    <td width="9%" height="35" align="center">
    <a href="/logistics/Manager/Member/Member_change.jsp?id=<%=code%>">�޸�</a></td>
    <td width="10%" height="35" align="center">
   <a href="/logistics/Manager/Member/Member_delete.jsp?id=<%=code%>">ɾ��</a></td>
  </tr>
<%
if(!rs.next())
break;
}
%>
<tr>
    <td width="104%" height="30" colspan="9" align="right">
<table width="104%" align="center">
	<tr>
    <td width="104%" height="30" colspan="9" align="right">
        ��<%=pagecount%>ҳ
        <a href="/logistics/Manager/Member/mMember.jsp?topage=<%=1%>">��һҳ</a>
        <a href="/logistics/Manager/Member/mMember.jsp?topage=<%=showpage-1%>">��һҳ</a>
        <a href="/logistics/Manager/Member/mMember.jsp?topage=<%=showpage+1%>">��һҳ</a>
        <a href="/logistics/Manager/Member/mMember.jsp?topage=<%=pagecount%>">���һҳ</a>
        <span class="bgcolor">
	  <input name="topage" type="text" class="txt_grey" size="5" value="<%=showpage%>">ҳ</span>
</td>
</tr>
</table>
</td>
</tr><%
}
condata.closeConn();
}catch(Exception e)
{e.printStackTrace();}
%>
</table>
</body>
</html>
