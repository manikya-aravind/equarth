<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <!--font files-->
    <link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch" rel="stylesheet">
    <!--icons-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
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
      h2{
        font-family:'Cabin Sketch', cursive;
        font-size: 2em;
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
<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<%=baseUrl1%>">Equarth</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
</nav>
  </body>
</html>
