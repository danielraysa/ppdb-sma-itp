<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <link rel="icon" href="../logo.ico">

    <title>Login Admin</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
     <script src="../js/jquery-1.9.1.js"></script>
    <script src="./js/bootstrap.js"></script>

    <!-- Custom styles for this template -->
    <link href="../css/signin.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body background="../img/swirl_pattern.png">

    <div class="container">
<!-- role="form" -->
<?php
    if (isset($_GET['error'])) {
  ?>
    <div class="alert alert-danger alert-dismissible" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <center><strong>Username/password salah!</strong></center>
    </div>
    <?php
    }
    else if (isset($_GET['no-login'])) {
  ?>
    <div class="alert alert-danger alert-dismissible" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <center><strong>Harap login dahulu!</strong></center>
    </div>
    <?php
    }
    ?>
      <form class="form-signin" method="post" action="login-check.php">
        <h2 class="form-signin-heading"><center><span class="glyphicon glyphicon-th-large"></span> Login Admin</center></h2>
        <input name="username" id="username" type="input" class="form-control" placeholder="Username" autocomplete="off" required autofocus>
        <input name="password" id="password" type="password" class="form-control" placeholder="Password" autocomplete="off" required>
        <button class="btn btn-lg btn-primary btn-block" name="login" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <center><h5 class="form-signin">Copyright &copy; <a href="#" data-toggle="modal" data-target="#contact"><?php echo date('Y'); ?> SMA ITP</a></h5></center>
  </body>
</html>
