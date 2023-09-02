<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="d" class="db.DbCode"></jsp:useBean>
<%
String email=request.getParameter("uemail");
String username=request.getParameter("uname");
String password=request.getParameter("upass");
int res=d.reg(email, username, password);

if(res>0)
{
	out.print("<h1>Inserted Successfully");
%>
<a href="Login.html">Click here to login</a>
<%
}
else
{
	out.print("<h1>Registration Failed </h1>");
%>
<jsp:include page="Createaccount.html" />
<%
}
%>
</body>
</html>