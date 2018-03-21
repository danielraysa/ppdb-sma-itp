<?php
    session_start();
	include '../koneksi.php';
	setlocale (LC_TIME, 'INDONESIAN');
	if (!isset ($_SESSION["username"]) || $_SESSION ["username"] != true){
		header ("location: index.php?no-login");
	  }
?>
<!DOCTYPE html>
<html lang="en">
  <head>
  <link rel="icon" type="image/ico" href="../logo.ico">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SMA Intensif Taruna Pembangunan</title>
  <!-- Bootstrap -->
  <link href="../css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../css/animate.css">
  <link rel="stylesheet" href="../css/font-awesome.min.css">
  <link rel="stylesheet" href="../css/font-awesome.css">
  <link rel="stylesheet" href="../css/jquery.bxslider.css">
  <link href="../css/overwrite.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
  <link rel="stylesheet" type="text/css" href="../css/set1.css" />
  <link href="../css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<style type="text/css">
		#chart-container {
			width: 100%;
			height: auto;
		}
	</style>
  </head>
  <body>
  
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>SMA ITP</span></a>
			</div>
			<div class="navbar-collapse collapse">
				<div class="menu">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation"><a href="list-pendaftar.php">Pendaftaran</a></li>
						<li role="presentation"><a href="jadwal-seleksi.php">Penjadwalan Seleksi</a></li>
						<li role="presentation"><a href="seleksi.php">Seleksi</a></li>
                        <li role="presentation"><a href="penerimaan.php">Penerimaan</a></li>
                        <li role="presentation" class="active"><a href="laporan.php">Laporan</a></li>
                        <li role="presentation"><a href="logout.php">Logout</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="portfolios">
					<div class="text-center">
						<h2>Laporan Calon Peserta Didik Baru</h2>
						<p>Berikut ini adalah hasil rekap data pendaftar beserta grafiknya.</p>
					</div>
		
				</div>
			</div>
		</div>
	</div>
	<hr>
	<!-- <div class="portfolio"> -->
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 col-sm-6">
					<form method="get" action="?ta='<?php echo $_GET['ta']; ?>'">
						<div class="input-group">
							<span class="input-group-addon">
								Tahun Ajaran
							</span>
							<select class="form-control" name="ta">
								<?php
								$que = mysqli_query($koneksi, "SELECT TAHUNAJARAN FROM pendaftar GROUP BY TAHUNAJARAN");
								while ($feth = mysqli_fetch_array($que)) {
								?>
								<option value="<?php echo $feth['TAHUNAJARAN']; ?>"><?php echo $feth['TAHUNAJARAN']; ?></option>
								<?php
								}
								?>
							</select>
							<span class="input-group-btn">
								<button class="btn btn-success" id="tahunajar" type="submit">Go!</button>
							</span>
						</div>
					</form>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-lg-6 col-md-12 col-sm-12">
					<div id="chart-container">
						<canvas id="mycanvas"></canvas>
					</div>
				</div>
				<div class="col-lg-6 col-md-12 col-sm-12">
					<div id="chart-container">
						<canvas id="myChart"></canvas>
					</div>
				</div>
			</div>
		</div>
	<!-- </div> -->

  <footer>
		<div class="last-div">
			<div class="container">
				<div class="row">
					<div class="copyright">
						© 2018 eNno Multi-purpose theme | <a target="_blank" href="http://bootstraptaste.com">Bootstraptaste</a>
					</div>
                    <!--
                        All links in the footer should remain intact.
                        Licenseing information is available at: http://bootstraptaste.com/license/
                        You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=eNno
                    -->
				</div>
			</div>
			<div class="container">
				<div class="row">
					<ul class="social-network">
						<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus fa-1x"></i></a></li>
					</ul>
				</div>
			</div>
			<a href="#" class="scrollup"><i class="fa fa-chevron-up"></i></a>
		</div>
	</footer>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../js/jquery-2.1.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
	<script src="../js/wow.min.js"></script>
	<script src="../js/jquery.easing.1.3.js"></script>
	<script src="../js/jquery.isotope.min.js"></script>
	<script src="../js/jquery.bxslider.min.js"></script>
	
	<script src="../js/functions.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function () {
		$('body').on('click', '.feed-id',function(){
			document.getElementById("feed_id").value = $(this).attr('data-id');
			console.log($(this).attr('data-id'));
		});
		var head = document.getElementsByTagName('head')[0];
		var js = document.createElement("script");
		if ($('#tahunajar').click) {
			js.src = "data-chart-x.js";
		}
		else {
			js.src = "data-chart.js";
		}
		head.appendChild(js);
	});
	</script>
	<!-- javascript -->
	<script type="text/javascript" src="../js/chart.js"></script>
	<!-- <script type="text/javascript" src="data-chart.js"></script> -->
  </body>
</html>
