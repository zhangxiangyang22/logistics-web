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
<jsp:include page="/top.jsp"/>
<%!
ResultSet rs=null;
String sql,nsql;
String username,login;
int n,count;
int pagesize=10;
int rowcount=0;
int pagecount=1;
%>
<body bgcolor="#ffffff">
<%
login=(String)session.getAttribute("login");
 username=(String)session.getAttribute("name");
if(login==null)
{
%>
<script language="javascript">
alert("����δ��¼�����������ϸ��Ϣ������");
<%
response.sendRedirect("/logistics/login.jsp");
%>
</script>
<%}
%>
<table width="786" height="137" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#333333">
  <tr>
  <td width="786" colspan="9" height="60">
      <p align="center"><font size="7" face="�����п�">������Ϣ</font>
  </td>
  </tr>
  <tr>
    <td width="786" height="30" colspan="9" align="right">

   <a href="/logistics/Cars/CarMessageadd.jsp">������Ϣ...</a></td>
  </tr>
  <tr>
    <td width="11%" height="29" align="center">���ƺ���</td>
   <td width="11%" height="29" align="center">����Ʒ��</td>
   <td width="11%" height="29" align="center">����</td>
    <td width="11%" height="29" align="center">��������</td>
    <td width="11%" height="29" align="center">��ʹ��</td>
    <td width="11%" height="29" align="center">��ʻԱ����</td>
    <td width="11%" height="29" align="center">��������</td>
    <td width="12%" height="29">
   <p align="center">��ϸ</td>
</tr>
    <%
    sql="select * from db_CarMessage order by IssueDate desc";
try
{
 rs=condata.executeQuery(sql);
if(!rs.next())
{
%>
<script language="javascript">
	alert("û�пճ���Ϣ����");
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
<tr>
<td width="11%" height="29" align="center"><%=rs.getString("TradeMark")%></td>
<td width="11%" height="29" align="center"><%=rs.getString("Brand")%></td>
<td width="11%" height="29" align="center"><%=rs.getString("Style")%></td>
<td width="11%" height="29" align="center"><%=rs.getString("CarLoad")%>��</td>
<td width="11%" height="29" align="center"><%=rs.getString("UsedTime")%>��</td>
<td width="15%" height="29" align="center"><%=rs.getString("DriverTime")%>��</td>
<td width="11%" height="29" align="center"><%=rs.getString("TranspotStyle")%></td>
<td width="12%" height="29" align="center"><a href="/logistics/Cars/CarMessageshow.jsp?id=<%=n%>">��ϸ</a></td>
</tr>
<%
if(!rs.next())
break;
}
%>
<tr>
    <td width="786" height="30" colspan="9" align="right">

<table width="786" align="center" cellpadding="0" cellspacing="0">
	<tr>
    <td width="786" height="30" colspan="9" align="right">
    ��<%=pagecount%>ҳ&nbsp;&nbsp;
        <a href="/logistics/Cars/CarMessage.jsp?topage=<%=1%>">��һҳ</a>
        <a href="/logistics/Cars/CarMessage.jsp?topage=<%=showpage-1%>">��һҳ</a>
        <a href="/logistics/Cars/CarMessage.jsp?topage=<%=showpage+1%>">��һҳ</a>
        <a href="/logistics/Cars/CarMessage.jsp?topage=<%=pagecount%>">���һҳ</a>
        <span class="bgcolor">
	  <input name="topage" type="text" class="txt_grey" size="5" value="<%=showpage%>">ҳ</span>
</td>
</tr>
</table>
</td>
  </tr>
<%
}
condata.closeConn();
}catch(Exception e)
{e.printStackTrace();System.out.println("carmessageage");}
%>
</table>
</body>
</html>
