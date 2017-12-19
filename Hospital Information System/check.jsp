

<%@include file="logo.jsp"%>
<%
String fname=request.getParameter("t1");
String mname=request.getParameter("t2");
String lname=request.getParameter("t3");
String pro=request.getParameter("t8");
String mob=request.getParameter("t9");
String age=request.getParameter("t4");
String dob1=request.getParameter("t5");



%>


<body background="c5.png">


<center>
<font color="green">
<table>
<tr>
<td><h1> Your Detail.</h1></td>
</tr>
<tr>
<td><h1>First-Name:<%=fname%></h1></td>
</tr>
<tr>
<td><h1>Middle-Name:<%=mname%></h1></td>
</tr>
<tr>
<td><h1>Last-Name:<%=lname%></h1></td>
</tr>
<tr>
<td><h1>Contact-No:<%=mob%></h1></td>
</tr>
<tr>
<td><h1>Address:<%=request.getParameter("t4")%></h1></td>
</tr>
<tr>
<td><h1>Age:<%=request.getParameter("t5")%></h1></td>
</tr>
<tr>
<td><h1>Patient Problem:<%=pro%></h1></td>
</tr>
</table>
</center>
</font>
<font color="red">
<h1> If All The Detail are Correct With Respect You :Please Submit  OtherWise  UpDate Your Detail.</h1>
</font>

<center>
<form action="jdbc.jsp">
<input type="hidden" name="t1" value='<%=fname%>'>
<input type="hidden" name="t2" value='<%=mname%>'>
<input type="hidden" name="t3" value='<%=lname%>'>
<input type="hidden" name="t8" value='<%=pro%>'>
<input type="hidden" name="t9" value='<%=mob%>'>
<input type="hidden" name="t4" value='<%=age%>'>
<input type="hidden" name="t5" value='<%=dob1%>'>

<input type="submit" value="submit" size="1111">

</form>
<form action="Registration1.jsp">
<input type="hidden" name="t1" value='<%=fname%>'>
<input type="hidden" name="t2" value='<%=mname%>'>
<input type="hidden" name="t3" value='<%=lname%>'>
<input type="hidden" name="t8" value='<%=pro%>'>
<input type="hidden" name="t9" value='<%=mob%>'>
<input type="hidden" name="t4" value='<%=age%>'>
<input type="hidden" name="t5" value='<%=dob1%>'>
<input type="submit" value="update" size="1111">
</form>

</center>