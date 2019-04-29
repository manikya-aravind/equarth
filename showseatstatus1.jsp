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

      <style>
      *{
        padding: 0;
        margin: 0;
        background-size: cover;
      }
      body{
        font-family: 'Cabin Sketch',cursive;
        background-color: #45A29E;
      }
      .popcorn-loader-overlay {
          width: 100%;
          height: 100%;
          background: url('popcorn.gif') center no-repeat #FFF;
          z-index: 99999;
          position: fixed;
      }
      .row{
        font-family:'Cabin Sketch', cursive;
      }

      </style>
  </head>
  <body>
     <div class="popcorn-loader-overlay"></div>


    <%@page import="com.amazon.model.Show"%>
<div class="row" style="background-color:rgba(176, 218, 208, 0.16)">

	<div class="container-fluid col-sm-12">

	<h3>Pick your Seats</h3>

	<hr>
		<div class="seatscontainer">
			<span class="screen" align="center">Screen</span>
			<br/><br/>
        <mark style="background-color:white;">
			<%
				String url = request.getRequestURL().toString();
				String baseUrl = url.substring(0, url.length() - request.getRequestURI().length())
						+ request.getContextPath() + "/";
				Show s = (Show) request.getAttribute("s");
				String seatstatus = s.getSeat_status();
				out.print("<form action='" + baseUrl + "payment' method='get'>");
				int jmax;

				for (int i = 0, k = 0; i < 8; i++) {

					out.print("<span class='vertical rownumber'>S"+i+"</span>");

					if (i < 2 || i == 7){
						jmax = 8; out.print("<span style='padding-left:32px'></span>");
					}
					else
						jmax = 10;
					for (int j = 0; j < jmax; j++) {

						if (j == jmax / 2)
							out.print("<span style='padding-left:20px'></span>");
						if (seatstatus.charAt(k++) == '1') {
							out.print(
									"<input type='checkbox' id='cb" + (k - 1) + "' name='seat' value='" + (k - 1) + "'> ");
							out.print("<label for='cb" + (k - 1) + "'></label>");
						} else {
							out.print("<input type='checkbox' class='disabledcheckbox' id='cb" + (k - 1)
									+ "' name='seat' disabled='disabled'> ");
							out.print("<label for='cb" + (k - 1) + "'></label>");
							//out.print("<input type='checkbox' checked='checked' disabled='disabled' > ");
						}
					}

					if (i < 2 || i == 7){
						jmax = 8; out.print("<span style='padding-left:32px'></span>");
					}
					out.print("<br/>");

				}

				out.print("<hr>");
				out.print("<input type='hidden' name='show_id' value='" + s.getShow_id() + "'>");
				out.print("<input type='submit' value='Book Seats'");

			%>
     </mark>
		</div>

	</div>
</div>

</form>
  </body>
</html>
