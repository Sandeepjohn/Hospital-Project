<%@include file="logo.jsp"%>

<%@ page import="java.sql.*"%>

<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement st=cn.createStatement();
String str="select *from Registration";
ResultSet rst=st.executeQuery(str);
%>
<table class="table">
 <caption><center><h2>Details of Patients</h2></center></caption>

 
		<thead>
<tr>
<th>PHN</th>
<th>First-Name</th>
<th>Middle-Name</th>
<th>Last-Name</th>
<th>Contacts</th>
<th>Problem</th>
</tr>
</thead>
<tbody>

<%
while(rst.next())
	{
	%>
	  
	   
		
			<tr>
			<td><h3><%=rst.getString(6)%></h3></td>
		    <td><%=rst.getString(1)%></td>
		    <td><%=rst.getString(2)%></td>
            <td><%=rst.getString(3)%></td>
		    <td><%=rst.getString(4)%></td>
		    <td><%=rst.getString(5)%></td>
			</tr>
		
		
	<%

}
%>
</tbody>
</table>
<%
}
catch(Exception ex)
{


	out.println(ex);
	}
%>

