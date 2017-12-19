
<%@include file="logo.jsp"%>
<%@ page import="java.sql.*"%>

<%
int i=0,y=0;
String sa=request.getParameter("t1");
//For Report..
Connection cn2=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement st2=cn2.createStatement();
String str2="select *from Report";
ResultSet rst2=st2.executeQuery(str2);
//For Registration;
Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement st=cn.createStatement();
String str="select *from Registration";
ResultSet rst=st.executeQuery(str);
//For Appointment;
Connection cn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement st1=cn1.createStatement();
String str1="select *from Appointment";
ResultSet rst1=st1.executeQuery(str1);
while(rst.next())
{
	if(rst.getString(6).equals(sa))
		i=1;
}
while(rst1.next())
{
	if(rst1.getString(4).equals(sa))
		y=1;
}

try
{
	
while(rst2.next())
{
	
	if(rst2.getString(1).equals(sa))
	{
	%>
	<body bgcolor=red>
	    <h2>Report Card</h2><br></body>
		<table class="table">
		<tbody>
		<tr class="active">
		<td><h2>PHN</td>
		<td><h2><%=rst2.getString(1)%></h2></td>
		</tr>
        <tr class="success">
		<td><h2>First Name</h2></td>
		<td><h2><%=rst2.getString(2)%></h2></td>
		</tr>
	     <tr class="warning">
		 <td><h2>Middle Name</h2></td>
	     <td><h2><%=rst2.getString(3)%></h2></td>
		 </tr>
		 <tr class="danger">

		 <td><h2> Last Name </h2></td>
		  <td><h2><%=rst2.getString(4)%></h2></td>
		 </tr>
		 <tr  class="success">
		 <td><h2> Treated By Dr.</h2></td>
		  <td><h2><%=rst2.getString(5)%></h2></td>
		 </tr>
		 <tr class="danger">
		 <td><h2> Date</h2></td>
		  <td><h2><%=rst2.getString(6)%></h2></td>
		 </tr>
		 <tr class="success">
		 <td><h2>Venue</h2></td>
		  <td><h2><%=rst2.getString(7)%></h2></td>
		 </tr>
		 <tr  class="success">
		 <td><h2>Contact No.</h2></td>
		  <td><h2><%=rst2.getString(8)%></h2></td>
		 </tr>
		 <tr  class="danger">
		 <td><h2>Problem</h2></td>
		  <td><h2><%=rst2.getString(9)%></h2></td>
		 </tr>
		 </tbody>
		 </table>
		
		<%
		
	}
}


      
		


}
catch(Exception ex)
{


	out.println(ex);
	}
	if(i==0)
		
		out.println("<h1>Invalid Registration Number....</h1>");

				if(i==1 && y==0)
		
		out.println("<h1>Your Treatment is Not Completed</h1>");
%>

