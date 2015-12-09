<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Rice Harvesting Details</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style/mcastyle.css" type="text/css">
        <!-- Custom CSS -->
        <link href="css/business-casual.css" rel="stylesheet">

        <!-- Fonts -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="brand">Agrarian Development</div>
        <div class="address-bar">A platform to manage your own Fields | Crops | Farms</div>

        <!-- Navigation -->
        <nav class="navbar navbar-default" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                    <a class="navbar-brand" href="index.html">Business Casual</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a href="about.html">About</a>
                        </li>
                        <li>
                            <a href="blog.html">User Guidance</a>
                        </li>
                        <li>
                            <a href="contact.html">Contact</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>


        <!-- -------------------------------------------------->
    <center>
        <div class="container">
            <div class="row">
                <div class="box">
                    <hr>
                    <h2 class="intro-text text-center">
                        <strong>Rice Harvesting Details</strong>
                    </h2>
                    <hr>
                    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                                       url="jdbc:mysql://localhost/agrography"
                                       user="root"  password="root"/>

                    <sql:query dataSource="${snapshot}" var="result">
                        SELECT * from rice_harvesting;
                    </sql:query>

                    <table border="1" width="100%">
                        <tr>
                            <th>ID</th>
                            <th>Brand Name</th>
                            <th>Area</th>
                            <th>Tentitive Date</th>
                            <th>Current Date</th>
                        </tr>
                        <c:forEach var="row" items="${result.rows}">
                            <tr>
                                <td><c:out value="${row.id}"/></td>
                                <td><c:out value="${row.name}"/></td>
                                <td><c:out value="${row.area}"/></td>
                                <td><c:out value="${row.tentitive_date}"/></td>
                                <td><c:out value="${row.cur_d}"/></td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="btn btn-primary" style="width: 100px;margin-top: 2%" onclick="goBack()">Go Back</button>
                </div>
            </div>

        </div>
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <p>Copyright &copy; NIT Raipur MCA 2016</p>
                    </div>
                </div>
            </div>
        </footer>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="jQuery/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="jQuery/mcacontext.js"></script>
        <script type="text/javascript" src="jQuery/mcamenu.js"></script>
        <!-- Script to Activate the Carousel -->
        <script>
                            $('.carousel').carousel({
                                interval: 5000 //changes the speed
                            });
        </script>
        <script>
            function goBack() {
                window.history.back();
            }
        </script>
    </body>

</html>
