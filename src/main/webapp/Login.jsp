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
String name=request.getParameter("luname");
String pass=request.getParameter("lupass");
if(d.login(name, pass))
{
%>
<jsp:forward page="Welcome.html">
<jsp:param value="<%=name%>" name="username"/>
</jsp:forward>
<%
}
else
{
%>
<h1>Invalid Credentials</h1>
<jsp:include page="Login.html"></jsp:include>
<%
}
%>
</body>
</html>