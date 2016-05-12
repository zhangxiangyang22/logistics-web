<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="java.util.Date,java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<title>
regist_config
</title>
</head>
<% request.setCharacterEncoding("gb2312"); %>
<body bgcolor="#ffffff">
<%
	Date date=new Date();
        String name=request.getParameter("name");
        String password=request.getParameter("password");
	String email=request.getParameter("email");
	String sex=request.getParameter("sex");
	String phone=request.getParameter("phone");
	String result=request.getParameter("result");
	String question=request.getParameter("question");
       java.sql.Date d=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
       String str="select Name from db_customer where Name='"+name+"'";
	ResultSet rs=condata.executeQuery(str);
	if(rs.next()){
%>
<script language="javascript">
	alert("此用户已经被占用请重新注册");
	history.back();
</script>
<%
	}else{
		String sql="insert into db_Customer values('"+name+"','"+password+"','"+email+"','"+sex+"','"+phone+"','"+question+"','"+result+"','"+d+"')";
		boolean sert=condata.executeInsert(sql);
            if(sert)
{%>
<script language="javascript">
	alert("注册成功");
	window.location.href="/logistics/index.jsp";
	</script>
<%
}else 
{
%>
<script language="javascript">
	alert("注册失败！！");
        history.back();
	</script>
<%
}

}
%>
</body>
</html>
