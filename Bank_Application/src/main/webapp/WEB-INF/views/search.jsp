<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.r3sys.customer.Customer" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My Bank - Search</title>
    <link href="./resources/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="./resources/assets/css/font-awesome.css" rel="stylesheet" />
    <link href="./resources/assets/css/custom.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <!-- Top Navbar -->
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">My Bank</a>
            </div>
            <div style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;">
                <a href="index.html" class="btn btn-danger square-btn-adjust">Logout</a>
            </div>
        </nav>

        <!-- Side Navbar -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li class="text-center">
                        <img src="assets/img/find_user.png" class="user-image img-responsive" style="height: 100px;" />
                    </li>
                    <li><a href="accopen"><i class="fa fa-edit fa-3x"></i>New Account</a></li>
                    <li><a href="deposit"><i class="fa fa-edit fa-3x"></i>Deposit Money</a></li>
                    <li><a href="withdraw"><i class="fa fa-edit fa-3x"></i>Withdraw Money</a></li>
                    <li><a href="show"><i class="fa fa-table fa-3x"></i>Show Accounts</a></li>
                    <li><a class="active-menu" href="search"><i class="fa fa-search fa-3x"></i>Search Accounts</a></li>
                </ul>
            </div>
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Search Account</h2>

                        <!-- Search Form -->
                        <form action="search">
                            <div class="form-group row">
                                <input type="hidden" name="action" value="add" />
                                <label for="inputEmail3" class="col-sm-3 form-control-label">Account Number</label>
                                <div class="col-sm-9">
                                    <textarea cols="7" rows="1" class="form-control" name="ano"
                                        placeholder="Enter Unique Account Number" required></textarea>
                                </div>
                            </div>
                            <div class="form-group row m-b-0">
                                <div class="col-sm-offset-3 col-sm-9">
                                    <button type="submit" class="btn btn-primary">Search</button>
                                </div>
                            </div>
                        </form>

                        <!-- Display Customer Info -->
                        <%
                            Customer customer = (Customer) request.getAttribute("customer");
                            if (customer != null) {
                        %>
                            
                            
                            <h3>Account Number : <%=customer.getAno() %></h3>
                            <h3>Account Name : <%=customer.getAname() %></h3>
                            <h3>Account Contact : <%= customer.getAmob()%></h3>
                            <h3>Email Address : <%=customer.getEmail() %></h3>
                            <h3>Account Balance : <%= customer.getAbal()%></h3>
                        <%
                            } else if (request.getParameter("ano") != null) {
                        %>
                            <h4 style="color: red;">No account found with the provided Account Number.</h4>
                        <%
                            }
                        %>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.metisMenu.js"></script>
    <script src="assets/js/custom.js"></script>
</body>
</html>
