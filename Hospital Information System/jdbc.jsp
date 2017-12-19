<%@include file="logo.jsp"%>
<%@ page import="java.util.*"%>

<%
Random ra=new Random();
Random sa=new Random();
String s="SG";
String id=s+""+ra.nextInt(9999)+sa.nextInt(9999);
%>
<h1>:You Have Successfully Registered</h1>



<%@ page import="java.sql.*"%>



<%
try
{
	
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement st=cn.createStatement();
String str="insert into Registration values('"+request.getParameter("t1")+"','"+request.getParameter("t2")+"','"+request.getParameter("t3")+"',"+request.getParameter("t9")+",'"+request.getParameter("t8")+"','"+id+"')";
st.executeUpdate(str);
}
catch(Exception ex)
{


	out.println(ex);
	}
%>



<h1>Your Personal Health Number is:=<%=id%></h1>
<h2> please Check Your Detail after Successful registration.<br>
http://localhost/8086/Appointment.com
</h2>
