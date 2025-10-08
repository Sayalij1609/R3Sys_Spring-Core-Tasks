<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
   	function access(){
		<%Object s1 = request.getSession().getAttribute("msg");
			if (s1 != null) {%>
		alert('<%=s1.toString()%>');
<%request.getSession().setAttribute("msg", null);
			}%>
	}
</script>
</head>
<body onload="access()">
	<%
		//AbstractDao abstractDao=new AbstractDao();
	%>

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
				<li><a href="search"><i class="fa fa-search fa-3x"></i>Search Accounts</a></li>
			</ul>

		</div>

		</nav>
		<!-- /. NAV SIDE  -->

		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<h2>&nbsp&nbspAdd New Account</h2>
					<div class="col-md-12">
						<div class="card">
							<form action="NewAccount" method="post">

								<div class="form-group row">
									<input type="hidden" name="action" value="add" /> <label
										for="inputEmail3" class="col-sm-3 form-control-label">Account
										Number</label>
									<div class="col-sm-9">
										<textarea cols="7" rows="1" class="form-control" name="ano"
											placeholder="Enter Unique Account Number" required></textarea>
									</div>
								</div>
								
								<div class="form-group row">
									<input type="hidden" name="action" value="add" /> <label
										for="inputEmail3" class="col-sm-3 form-control-label">Email</label>
									<div class="col-sm-9">
										<textarea cols="7" rows="1" class="form-control" name="email"
											placeholder="Enter Email" required></textarea>
									</div>
								</div>
								
								
								<div class="form-group row">
									<input type="hidden" name="action" value="add" /> <label
										for="inputEmail3" class="col-sm-3 form-control-label">Password</label>
									<div class="col-sm-9">
										<textarea cols="7" rows="1" class="form-control" name="password"
											placeholder="Enter Password" required></textarea>
									</div>
								</div>
								

								<div class="form-group row">
									<input type="hidden" name="action" value="add" /> <label
										for="inputEmail3" class="col-sm-3 form-control-label">Name</label>
									<div class="col-sm-9">
										<textarea cols="7" rows="1" class="form-control" name="aname"
											placeholder="Enter Name" required></textarea>
									</div>
								</div>


								<div class="form-group row">
									<input type="hidden" name="action" value="add" /> <label
										for="inputEmail3" class="col-sm-3 form-control-label">Mobile</label>
									<div class="col-sm-9">
										<textarea cols="7" rows="1" class="form-control" name="amob"
											placeholder="Enter Mobile Number"
											onkeypress="return isNumberKey(event)" minlength="10"
											maxlength="10" required></textarea>
									</div>
								</div>

								<div class="form-group row">
									<input type="hidden" name="action" value="add" /> <label
										for="inputEmail3" class="col-sm-3 form-control-label">Opening
										Balance</label>
									<div class="col-sm-9">
										<textarea cols="7" rows="1" class="form-control" name="abal"
											placeholder="Enter Account Opening Balance"
											onkeypress="return isNumberKey(event)" minlength="1"
											maxlength="100" required></textarea>
									</div>
								</div>

								<div class="form-group row m-b-0">
									<div class="col-sm-offset-3 col-sm-9">
										<button type="submit" class="btn btn-primary">Add New
											Account</button>
									</div>
								</div>

							</form>
						</div>
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