<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title></title>
<%
	String url = request.getRequestURL().toString();
	String baseUrl = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<!--font files-->
<link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cabin+Sketch" rel="stylesheet">

  <!--icons-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <!--pre-loader-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script>
         jQuery(window).load(function(){
             jQuery(".popcorn-loader-overlay").fadeOut(1000);
         });
     </script>

  <noscript>
    <style>.popcorn-loader-overlay { display: none; } </style>
  </noscript>

<link href="<%=baseUrl%>/resources/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Template CSS -->
<link href="<%=baseUrl%>/resources/css/modern-business.css"
	rel="stylesheet">
<!-- Theme CSS -->
<link href="<%=baseUrl%>/resources/css/custom.css" rel="stylesheet">
<!-- Datepicker CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />

<!-- Custom Fonts -->
<link
	href="<%=baseUrl%>/resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<style>
.jumbotron {
	color: white;
	background-color: rgba(245, 47, 47, 0.84);
	overflow: visible;
	width: 30%;
	border-radius: 5px;
	padding-bottom: 10px;
}
.mticket {
    text-align: center;
    font-family:'Cabin Sketch', cursive;
    font-size: large;
    color: aquamarine;
}
img {
	position: relative;
	top: 0px;
	height: 136px;
	float: left;
}
.popcorn-loader-overlay {
    width: 100%;
    height: 100%;
    background: url('popcorn.gif') center no-repeat #FFF;
    z-index: 99999;
    position: fixed;
}
a{
  text-decoration: none;
  color: black;
}

*{
  padding: 0;
  margin: 0;
  background-size: cover;

}

header{
  width: 100%;
  height:6em;
  color: white;
  background-color: black;

}
.icon{
 float: right;
 right: 20px;
}
.logo{

  font-family: 'Fredericka the Great', cursive;
  font-size: 3.8em;
}
.row{
  font-family:'Cabin Sketch', cursive;
}
body{
  background-color: #45A29E;
}
</style>
</head>
<body>
  <!-- <div class="popcorn-loader-overlay"></div> -->

    <header>
      <div class="headermenu">
        <div class="logo">
          eQarth
          <div class="icon">
              <i class="fa fa-user" aria-hidden="true" > <a href="#"></a> </i>
          </div>
        </div>

      </div>
    </header>
	<%
		Booking b = (Booking) request.getAttribute("booking");
	%>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="jumbotron col-sm-6">
			<img alt="ticket" src="<%=baseUrl%>/resources/Images/ticket.ico">
			<span class="mticket">E-Ticket</span><br>
			Event:
			<%=b.getEvent().getName()%><br> Date:
			<%=b.getShow().getDate()%><br> Show time:
			<%=b.getShow().getTime()%><br> Seats:
			<%
				String[] seats = b.getSeats();
				for (int i = 0; i < seats.length; i++)
					out.print(" S" + seats[i]);
			%>
			<br> Amount: Rs.
			<%=b.getShow().getCost() * b.getSeats().length * 1.145%>
			<br>
		</div>
		<div class="col-sm-2"></div>
	</div>
	<!-- jQuery -->
	<script type="text/javascript" src="<%=baseUrl%>resources/js/jquery.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script type="text/javascript"
		src="<%=baseUrl%>resources/js/bootstrap.min.js"></script>
</body>
</html>
