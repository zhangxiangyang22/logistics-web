<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="java.util.Date,java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<title>
regist_config
</title>
</head>
<body bgcolor="#ffffff">
<%
        request.setCharacterEncoding("gb2312");
	Date date=new Date();
        String name=request.getParameter("name");
        String password=request.getParameter("password");
	String email=request.getParameter("email");
	String sex=request.getParameter("sex");
	String phone=request.getParameter("phone");
	String result=request.getParameter("result");
	String question=request.getParameter("question");
          java.sql.Date showdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
              String sql="update db_Customer set Name='"+name+"',Password='"+
             password+"',Email='"+email+"',Sex='"+sex+"',Phone='"+
              phone+"',Question='"+question+"',Result='"+
               result+"',IssueDate='"+showdate+"' where id="+request.getParameter("code");
		boolean sert=condata.executeUpdata(sql);
            if(sert)
{%>
<script language="javascript">
	alert("�޸ĳɹ�������");
	window.location.href=("/logistics/Manager/Member/mMember.jsp");
</script>
<%
}
%>
</body>
</html>
