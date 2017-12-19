
<%@include file="logo.jsp"%>
<%@ page import="java.sql.*"%>

<%
String sa=request.getParameter("t1");
int i=0;
int y=0;
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement st=cn.createStatement();
String str="select *from Appointment";
ResultSet rst=st.executeQuery(str);
//For registration..
Connection cn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement st1=cn1.createStatement();
String str1="select *from Registration";
ResultSet rst1=st1.executeQuery(str1);
while(rst1.next())
{
	
	if(rst1.getString(6).equals(sa))
	{
		y=y+1;

	}
}
while(rst.next())
{
	
	if(rst.getString(4).equals(sa))
	{
	%>
	<body bgcolor=red>
	    <h2> You Have Successfully Appointed By.</h2><br>
		<table border=10 color=black width=50% height=50% >
		<tr>
		<td><h2> Dr Name</td>
		<td><h2><%=rst.getString(1)%></h2></td>
		</tr>
        <tr>
		<td><h2> Date</h2></td>
		<td><h2><%=rst.getString(2)%></h2></td>
		</tr>
	     <tr>
		 <td><h2>Venue</h2></td>
	     <td><h2><%=rst.getString(3)%></h2></td>
		 </tr>
		 <tr>
		 <td><h3> Timing</h3></td>
		 <td><h3>8AM</h3></td>
		 </tr>
		 </table>
		<h3> Please come with all related Documents.</h3>
		<%
		i=i+1;
		%>
		
		<%
		
	}
}


      
		


if(y==0 && i==0)
	out.println("<h1>Invalid Registration Number.</h1>");
else
	if(y==1 && i==0)
	{
		  %>
			  <h1>Please wait...........</h1>
		      <h1>Your request should be process.....</h1>
			  <%
	} 
}
catch(Exception ex)
{


	out.println(ex);
	}
%>

