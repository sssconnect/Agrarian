<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/agrography"
                   user="root"  password="root"/>
<sql:query dataSource="${snapshot}" var="weed">
    SELECT * FROM weedkiller ;
</sql:query>
<sql:query dataSource="${snapshot}" var="ton">
    SELECT * FROM tonic ;
</sql:query>
<sql:query dataSource="${snapshot}" var="pesti">
    SELECT * FROM pesticides ;
</sql:query> 
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Soyabean Fertilization</title>

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
                        <strong>Soyabean Fertilization</strong>
                    </h2>
                    <hr>
                    <img src="images/soya-fertilize.jpg" height=400 weidth=600 >

                    <div class="container-fluid" style="margin-top:1%">        
                        <form method="post" action="SoyabeanFertilization" class="form-inline">
                            <!--iv style="margin-left:25%"-->
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div class="row" >
                                        <div class="col-lg-6">
                                            <label for="brand" >Name</label>
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="fertilize_name" style="width: 178px;" >
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div class="row" >
                                        <div class="col-lg-6">
                                            <label for="brand" >Weed Killer</label>
                                        </div>
                                        <div class="col-lg-6">
                                            <select name="weed_killer_id" class="form-control" style="width: 200px; ">
                                                <c:forEach var="row" items="${weed.rows}">
                                                    <option><c:out value="${row.name}"/></option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="quantity" >Quantity</label>
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="weed_quantity_id" style="width: 178px;" placeholder="10 Kg">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div class="row" >
                                        <div class="col-lg-6">

                                        </div>
                                        <div class="col-lg-6">

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div class="row" >
                                        <div class="col-lg-6">
                                            <label for="brand" >Pesticides</label>
                                        </div>
                                        <div class="col-lg-6">
                                            <select name="pesticides_id" class="form-control" style="width: 200px; ">
                                                <c:forEach var="row" items="${pesti.rows}">
                                                    <option><c:out value="${row.name}"/></option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="quantity" >Quantity</label>
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="pesti_quantity_id" style="width: 178px;" placeholder="10 Kg">
                                        </div>
                                    </div>
                                </div>
                            </div> 

                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div class="row" >
                                        <div class="col-lg-6">

                                        </div>
                                        <div class="col-lg-6">

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div class="row" >
                                        <div class="col-lg-6">
                                            <label for="brand" >Tonics</label>
                                        </div>
                                        <div class="col-lg-6">
                                            <select name="tonic_id" class="form-control" style="width: 200px; ">
                                                <c:forEach var="row" items="${ton.rows}">
                                                    <option><c:out value="${row.name}"/></option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="quantity" >Quantity</label>
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="tonic_quantity_id" style="width: 178px;;" placeholder="10 Kg">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="container-fluid" style="margin-top:1%">        
                                            <div class="col-lg-6">
                                            </div>
                                            <div class="col-lg-6">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="container-fluid" style="margin-top:1%">        
                                            <div class="col-lg-6">
                                                <label for="area" >Area</label>
                                            </div>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" name="area_id" style="width: 200px;" placeholder="200 square feet" style="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="container-fluid" style="margin-top:1%">        
                                            <div class="col-lg-6">
                                                <label for="area">Date</label>
                                            </div>
                                            <div class="col-lg-6">
                                                <c:set var="now" value="<%=new java.util.Date()%>" />
                                                <input type="text" value="${now}" class="form-control" style="width: 178px;" name="cur_d" >
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="container">
                                <div class="row">                    
                                    <div class="col-lg-9">                        
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <c:set var="now" value="<%=new java.util.Date()%>" />
                                            <label style="color: #00c;"><c:out value="${now}"/></label>
                                            <input type="hidden" name="cur_d" value="${now}">
                                        </div>
                                    </div>
                                </div>
                            </div>                



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
            })
        </script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>

</html>
