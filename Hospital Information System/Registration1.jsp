<%@include file="logo.jsp"%>
<%
String fname=request.getParameter("t1");
String mname=request.getParameter("t2");
String lname=request.getParameter("t3");
String pro=request.getParameter("t8");
String mob=request.getParameter("t9");
String add=request.getParameter("t4");
String age=request.getParameter("t5");
%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body bgcolor=red>
<div class="container">
<div class="row">
<div class="col-md-12">

<div class="logo img-responsive">
<div class="img-rounded">
<table>
<tr><td><img src="images/images.jpg"  ></td></tr>
</table>
</div>
</div>
<br>
<br>
<br><br>
<br>
<center>




<div class="form-control:focus"> 
<form action="jdbc.jsp">
<font size="5" >
<tr><th>First-Name:&nbsp;&nbsp;&nbsp;&nbsp;</th><td><input type="text" name="t1" value='<%=fname%>'></th></tr><br>
<tr>
<th>Middle-Name:&nbsp;</th><td><input type="text" name="t2" value='<%=mname%>'></th>
</tr><br>
<tr>
<th>Last-Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><td><input type="text" name="t3" value='<%=lname%>'></th>
</tr><br>
<tr>
<th>Gender:</th>
</tr>
<th>Male : </th><td>  <input type=radio name=r1 size=50></th><td>Female : <input type=radio name="r1"></th>
</tr><br>
<tr>
<th>Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><td><input type="text" name="t4" value='<%=add%>'></th>
</tr><br>
<tr>
<th>Contact No:&nbsp;&nbsp;&nbsp;&nbsp;</th><td><input type="text"  name="t9" value='<%=mob%>'></th>
</tr><br>
<tr>
<th>Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><td><input type="text" name="t5" value='<%=age%>'>

			


</td>
</tr><br>

<tr>
<th>Patient Problem:</th><td><input type="text" name="t8" value='<%=pro%>'>
 

</div>
<td><input type="submit" name="submit"class="btn btn-primary" size="11"></th>
</form>
</div>
</div>
</div>
</div>
</center>
</body>
</html>