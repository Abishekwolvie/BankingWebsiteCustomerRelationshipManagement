<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <style>
        #maindiv{

            width: 100%;
            height: auto;
            background-color: white;
        }
        #logoandname{
            height: 200px;
           
            position: relative;

        }
        #logoandname img{
            width: 100px;
            height: 100px;
            margin-top: 10px;
        }
        #logoandname img,p{
            display: inline-block;
            line-height: 50px;
        }
        #logoandname p{

            margin-left: 600px;
            font-size: 50px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
    
        }
        #navbar{

            width: 100%;
            height: 80px;
            background-color: blueviolet;
            border-radius: 3px;
        }
        #navbar a{

            line-height: 80px;
            color: white;
            text-decoration: none;
            font-size: 20px;
            margin-left: 50px;
            margin-right: 50px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .navigationLinks{
			
			margin-left: 500px;
		}

        .customerdata{

            width: 100%;
            height: 800px;
            background-color: bisque;
        }

        .customerdata table{

            border: 2px solid black;
            width: 2000px;
            height: 500px;
           
        }
        .customerdata table th{
			 border: 2px solid black;
			 font-size:20px;
			 
			
		}
		#tableheading th{
			color: white;
			background-color:chocolate;
			font-size:30px;
		
		}

        
    </style>
</head>
<body>
<jsp:useBean id="d" class="db.DbCode"></jsp:useBean>
<%@ page import="java.util.*,db.Customer" %>
<%@ page errorPage="Error.jsp" %>
    <div id="maindiv">
        <nav id="logoandname">
            <img src="banklogo.png" alt="">
        
            <p>Banking Website</p>
            
          
            
        </nav>
        <nav id="navbar">
            <div class="navigationLinks">
                <a href="Welcome.html">Home</a>
                <a href="Insert.html">Insert</a>
                <a href="">Update</a>
                <a href="">Delete</a>
                <a href="Login.html">Logout</a>
            </div>
        </nav>
        <div class="customerdata">
            <table >
                <tr id="tableheading">
                    <th>Account Number</th>
                    <th>Name</th>
                    <th>Account Type</th>
                    <th>Balance</th>
                    <th>Mobile Numer</th>
                    <th>Date of Birth</th>
                    <th>Email Id</th>
                </tr>
                <%

					ArrayList<Customer> alc=d.view();
					Iterator<Customer> ic=alc.iterator();
					while(ic.hasNext())
					{
						Customer cv=ic.next();
				%>
                <tr>
                	<th><%=cv.getAcno() %></th>
                	<th><%=cv.getCustomername() %></th>
                	<th><%=cv.getActype() %></th>
                	<th><%=cv.getBalance() %></th>
                	<th><%=cv.getMobno() %></th>
                	<th><%=cv.getDob() %></th>
                	<th><%=cv.getEmailid() %></th>
                </tr>
                <%
	                } 
                
                %>
            </table>
        </div>
    </div>

</body>
</html>