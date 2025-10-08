<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.*" %>
<%@ page import="com.r3sys.customer.Customer" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>My Bank</title>
<!-- BOOTSTRAP STYLES-->
<link href="./resources/assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="./resources/assets/css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="./resources/assets/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<script type="text/javascript">
	
</script>
</head>
<body onload="access()">


	<div id="wrapper">
		<nav class="navbar navbar-default navbar-cls-top " role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".sidebar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" style="font-size: 19px" href="#">My Bank</a>
		</div>
		<div
			style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;">
			&nbsp; <a href="index.html" class="btn btn-danger square-btn-adjust">Logout</a>
		</div>
		</nav>
		<!-- /. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">
				<li class="text-center"><img src="assets/img/find_user.png"
					class="user-image img-responsive" style="height: 100px;" /></li>
				<li><a href="accopen"><i class="fa fa-edit fa-3x"></i>New
						Account</a></li>
				<li><a href="deposit"><i class="fa fa-edit fa-3x"></i>Deposit
						Money</a></li>
				<li><a href="withdraw"><i class="fa fa-edit fa-3x"></i>Withdraw
						Money</a></li>
				<li><a href="show"><i class="fa fa-table fa-3x"></i>Show
						Accounts</a></li>
			</ul>

		</div>

		</nav>
		<!-- /. NAV SIDE  -->

		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<h2>&nbsp&nbspView Accounts</h2>
					<div class="col-md-12">

						<table border="1" id="displaytable" class="table table-bordered"
							style="">
							<thead>
								<tr>
									<th>Account Number</th>
									<th>Email</th>
									<th>Password</th>
									<th>Name</th>
									<th>Contact</th>
									<th>Balance</th>
									<th>Action</th>
								</tr>
							</thead>
							
							<%
							List<Customer> allCustomers = (List<Customer>)request.getAttribute("allCustomers");
							for (Customer cs : allCustomers)
							{
							
							%>
							
							<tbody>
								<tr>
									<td><%=cs.getAno()%></td>
									<td><%=cs.getEmail()%></td>
									<td><%=cs.getPassword()%></td>
									<td><%=cs.getAname()%></td>
									<td><%=cs.getAmob()%></td>
									<td><%=cs.getAbal()%></td>
									<td><a href = "delete?ano=<%=cs.getAno()%>">Delete</a></td>
								</tr>
							</tbody>
							
							<%
							}
							%>
 

							
						</table>
					</div>
				</div>

			</div>

		</div>
	</div>

	</div>


	<!-- /. PAGE INNER  -->
	</div>
	<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="assets/js/custom.js"></script>
	<SCRIPT language=Javascript>
		function isNumberKey(evt) {
			var charCode = (evt.which) ? evt.which : event.keyCode;

			if (charCode > 31 && (charCode<48 || charCode>57))
				return false;

			return true;
		}
	</SCRIPT>

</body>
</html>