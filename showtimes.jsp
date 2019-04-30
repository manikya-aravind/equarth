<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<meta charset="utf-8">
    <title></title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>
           jQuery(window).load(function(){
               jQuery(".popcorn-loader-overlay").fadeOut(1000);
           });
       </script>

    <noscript>
      <style>.popcorn-loader-overlay { display: none; } </style>
    </noscript>
    <!--icons & fonts-->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch" rel="stylesheet">

      <style >
			*{
		    padding: 0;
		    margin: 0;
		    background-size: cover;
		  }
		  body{
		    font-family: 'Cabin Sketch';
				background-image:url(projector.jpg);
				background-position: top 80px left 100px;
			  background-color: #45a29e;
				background-size: 25%;
		  }
		  header{
		    width: 100%;
		    height:65px;
		    color: white;
		    background-color: black;

		  }
		  .headermenu .logo a{
		      text-decoration: none;
		      color: white;
		  }
		  .icon{
		   float: right
		  }
		  .logo{
		    font-family: 'Fredericka the Great', cursive;
		    font-size: 45px;
		  }
			table{

			 top:60px;
			 font-size: 1.3em;
			}
			table.center {

			 margin-left:auto;
			 margin-right:auto;

		 }
			tr:nth-child(even) {background-color: #66fcf1;}
			tr:nth-child(odd) {background-color: #c5c6c7;}
			.link:hover{
				color: #006400;
			}
      </style>
	</head>
<body>
	<div class="popcorn-loader-overlay"></div>

	    <header>
	      <div class="headermenu">
	        <div class="logo">
	          <a href="index.html">eQarth</a>
	          <div class="icon">
	              <i class="fa fa-user" aria-hidden="true" style="font-size:36px;"> <a href="#"></a> </i>
	          </div>
	        </div>
	      </div>
	    </header>
	<br><br>
	<h1 align="center">Venues of an event</h1><br><br>


	<table border="1" class="center">
	    <tr ><th>Venue_id</th><th>Venue_name</th></tr>

	    <c:forEach var="v" items="${listv}">
			<tr>
				<td>${v.venue_id}</td>
				<td>${v.v_name}</td>
				<td><a class="link" style="text-decoration:none;" href="choose-slot/${v.venue_id}/${v.event_id}">choose slot</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>
