<%@ page contentType="text/html; charset=GBK" language="java"%>

<%@ page import="java.sql.*"%>

<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>

<html>
<head>

<title>
login_config

</title>
</head>

<%
ResultSet rs=null;

request.setCharacterEncoding("gb2312");

String name=request.getParameter("name");

String password=request.getParameter("password");

if(name==""&&name==null&&password==""&&password==null)

{%>

<jsp:forward page="/logistics/Manager/Login/mlogin.jsp"/>

<%}else

{

try

{

String sql="select * from tb_Manager where Name='"+name+"' and Password='"+password+"'";

rs=condata.executeQuery(sql);

if(rs.next())

{

session.setAttribute("username",name);

session.setAttribute("login","success");

%>
<script language="javascript">

alert("��¼�ɹ�������");

</script>

<%

response.sendRedirect("/logistics/Manager_index.jsp");

}
else
{

%>

<script language="javascript">

alert("��¼ʧ�ܣ�����");

history.back();
</script>

<%
}
//rs.close();

//condata.closeStatement();

//condata.closeConn();
}
catch(Exception e)

{
System.out.println("�����쳣login_config");}

}
%>
<body bgcolor="#ffffff">

</body>
</html>
