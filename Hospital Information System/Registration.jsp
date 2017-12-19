<%@include file="logo.jsp"%>
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
<form action="check.jsp">
<font size="5" >
<tr><th>First-Name:&nbsp;&nbsp;&nbsp;&nbsp;</th><td><input type="text" name="t1" required></th></tr><br>
<tr>
<th>Middle-Name:&nbsp;</th><td><input type="text" name="t2" required></th>
</tr><br>
<tr>
<th>Last-Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><td><input type="text" name="t3" required></th>
</tr><br>
<tr>
<th>Gender:</th>
</tr>
<th>Male : </th><td>  <input type=radio name=r1 size=50></th><td>Female : <input type=radio name="r1"></th>
</tr><br>
<tr>
<th>Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><td><input type="text" name="t4" ></th>
</tr><br>
<tr>
<th>Contact No:&nbsp;&nbsp;&nbsp;&nbsp;</th><td><input type="text"  name="t9" required></th>
</tr><br>
<tr>
<th>Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><td><select name="t5">

			 <option>Select</option>

             <option>1</option>

			 <option>2</option>

			 <option>3</option> 

			 <option>4</option>

			 <option>5</option>

			 <option>6</option>

			 <option>7</option>

			 <option>8</option>

	         <option>9</option>

	    	 <option>10</option>

   		     <option>11</option>

             <option>12</option> 

		     <option>13</option>

		     <option>14</option>

			 <option>15</option>

			 <option>16</option>

			 <option>17</option>

		     <option>18</option>

			 <option>19</option>

			 <option>20</option>

		     <option>21</option>

			 <option>22</option>

		     <option>23</option>

			 <option>24</option>

			 <option>25</option>

			 <option>26</option>

			 <option>27</option>

		     <option>28</option>

			 <option>29</option>

			 <option>30</option>

			 <option>31</option>

			 </select>


</td>
</tr><br>

<tr>
<th>Patient Problem:</th><td><select name="t8" required>
 
    <option>Select</option>
	<option>ALZHEIMER</option>
	<option>ANDROPAUSE</option>
	<option>ARTHRITIS</option>
	<option>TUMOR</option>
    <option>CELIAC</option>
    <option>E.N.T</option>
    <option>DIABETES</option>
	<option>FEWER</option>
	<option>MALARIA</option>
	<option>CANCER</option>
    <option>TUBERCOLOSIS</option>
    <option>HEART</option>
    <option>HEAD</option>
    </SELECT></TR>
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