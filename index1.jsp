<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 MVC - HelloWorld Index Page</title>
<!--font files-->
<link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cabin+Sketch" rel="stylesheet">

  <style>
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
  h3{
    font-family:'Cabin Sketch', cursive;
    font-size: 2em;
3}
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
	<center>
		
		<h3>
			<a href="showtimes/${event_id='1'}">Venues</a>
		</h3>
	</center>
</body>
</html>
