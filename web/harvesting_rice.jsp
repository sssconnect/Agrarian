<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/agrography"
                   user="root"  password="root"/>
<sql:query dataSource="${snapshot}" var="rice">
    SELECT * FROM rice_sowing_table where id=1;
</sql:query>

<html lang="en">

    <head>
        <script >
            function setValue()
            {
               <c:forEach var="row" items="${rice.rows}">                               
                    document.getElementById("harvest_name").setAttribute("value","${row.name}");
                     document.getElementById("area").setAttribute("value","${row.area}");
                      document.getElementById("ten_date").setAttribute("value","${row.tentitive_date}");
               </c:forEach>
            }
        </script>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Rice Harvesting</title>

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
        <% 
            if(session.getAttribute("Message")=="Successfully Saved")
            {
        %>
        <script>
            alert("<%=session.getAttribute("Message")%>");
        </script>
        <%
        session.removeAttribute("Message");
            }
        %>
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
                        <strong>Rice Harvesting</strong>
                    </h2>
                    <hr>
                    <img src="images/rice-harvesting.jpg" height=400 weidth=600 >

                    <div class="container-fluid" style="margin-top:1%">        
                        <form method="post" action="RiceHarvesting" class="form-inline">
                            <!--iv style="margin-left:25%"-->
                            <div class="col-lg-5">
                                <div class="form-group">
                                    <div class="row" >
                                        <div class="col-lg-5">
                                            <label for="brand" >Brand Name</label>
                                        </div>
                                        <div class="col-lg-7">
                                            <c:forEach var="row" items="${rice.rows}">
                                                <input type="text"  class="form-control" value=" " name="harvest_name" id="harvest_name" style="width: 178px;" >

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="form-group">
                                        <div class="row" >
                                            <div class="col-lg-4">
                                                <label for="area" >Area</label>
                                            </div>
                                            <div class="col-lg-8">
                                                <input type="text" class="form-control" value="" name="area" id="area" style="width: 178px;" placeholder="10 Kg">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <label for="ten_date" >Cycle</label>
                                            </div>
                                            <div class="col-lg-8">
                                                <input type="text" class="form-control" value="" name="ten_date" id="ten_date" style="width: 178px;" placeholder="10 Kg">
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">

                            </div>
                            <div class="col-lg-4">

                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div class="row">
                                        <c:set var="now" value="<%=new java.util.Date()%>" />
                                        <input type="hidden" name="cur_d" value="${now}">
                                        <label style="color: #00c;"><c:out value="${now}"/></label>
                                    </div>
                                </div>
                            </div>
                            <button type="button" onclick="setValue();" class="btn btn-info" style="width: 100px;margin-top: 2%" > Show </button>        
                            <button type="submit" class="btn btn-success" style="width: 100px;margin-top: 2%">Submit</button>
                            <button type="reset" class="btn btn-primary" style="width:  100px;margin-top: 2% ">Clear</button>        
                        </form>						
                    </div>
                </div>	
            </div>
        </div>

        <!---------------------------------->			
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


        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="jQuery/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="jQuery/mcacontext.js"></script>
        <script type="text/javascript" src="jQuery/mcamenu.js"></script>
        <!-- Script to Activate the Carousel -->
        <script>
                                            $('.carousel').carousel({
                                                interval: 5000 //changes the speed
                                            })
        </script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>

</html>
