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
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="../js/jquery-2.1.1.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/wow.min.js"></script>
  <script src="../js/jquery.easing.1.3.js"></script>
  <script src="../js/jquery.isotope.min.js"></script>
  <script src="../js/jquery.bxslider.min.js"></script>
  <script type="text/javascript" src="../js/fliplightbox.min.js"></script>
  <script src="../js/functions.js"></script>
  <script type="text/javascript">$('.portfolio').flipLightBox()</script>
  <script src="../js/jQuery.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/moment.js"></script>
  <script src="../js/angular.min.js"></script>
  <script src="../js/proses.js"></script>
  <script src="../js/bootstrap-datetimepicker.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />
<!-- Bootstrap Date-Picker Plugin -->
  <!-- Bootstrap -->
  <link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <link href="../css/bootstrap.css" rel="stylesheet">
  <link href="../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../css/animate.css">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/font-awesome.css">
	<link rel="stylesheet" href="../css/jquery.bxslider.css">
	<link href="../css/overwrite.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="../css/set1.css" />
	<link href="../css/style.css" rel="stylesheet">
	<link href"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<!-- <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('.search-box input[type="text"]').on("keyup input", function(){
			/* Get input value on change */
			var inputVal = $(this).val();
			var resultDropdown = $(this).siblings(".result");
			if(inputVal.length){
				$.get("backend-search.php", {term: inputVal}).done(function(data){
					// Display the returned data in browser
					resultDropdown.html(data);
				});
			} else{
				resultDropdown.empty();
			}
		});
		
		// Set search input value on click of result item
		$(document).on("click", ".result p", function(){
			$(this).parents(".input-group").find('input[type="text"]').val($(this).text());
			$(this).parent(".result").empty();
		});
	});
	</script> -->
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
						<li role="presentation" class="active"><a href="list-pendaftar.php">Pendaftaran</a></li>
						<li role="presentation" ><a href="jadwal-seleksi.php">Penjadwalan Seleksi</a></li>
						<li role="presentation"><a href="seleksi.php">Seleksi</a></li>
                        <li role="presentation"><a href="penerimaan.php">Penerimaan</a></li>
						<li role="presentation"><a href="laporan.php">Laporan</a></li>
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
						<h2>Daftar Calon Peserta Didik Baru</h2>
						<p>Berikut ini adalah list/daftar calon peserta didik baru. <br>Klik Tombol <b>Form Kembali</b> jika<b> sudah menerima form pendaftaran beserta uang pembayaran</b>.</p>
					</div>
					<hr>
				</div>
			</div>
		</div>
	</div>

	<!-- <div class="portfolio"> -->
		<div class="container">
		<?php 
		if (isset($_GET['success'])) {
		?>
			<div class="alert alert-success alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<center><strong>Berhasil menyimpan data.</strong></center>
			</div>
		<?php
		}
		if (isset($_GET['error'])) {
			?>
			<div class="alert alert-danger alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<center><strong>Ada kesalahan!</strong></center>
			</div>
		<?php
		}
		?>
			<div class="row">
				<div class="col-lg-6 col-md-5 col-sm-5">
					<form method="get" action="?cari='<?php echo $_GET['cari']; ?>'">
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1"><i class="fa fa-search"></i></span>
							<input type="text" class="form-control" name="cari" placeholder="Cari berdasarkan ID Pendaftaran, Nama atau Asal Sekolah" aria-describedby="basic-addon1">
							<span class="input-group-btn">
								<button class="btn btn-success" type="submit">Go!</button>
							</span>
						</div>
					</form>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
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
							<button class="btn btn-success" type="submit">Go!</button>
						</span>
					</div>
				</form>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2">
					<a target="_blank" href="cetak-list-pendaftar.php" class="btn btn-success" role="button">Cetak List Pendaftar</a>
				<!-- <form method="post" action="cetak-list-pendaftar.php">
						<button class="btn btn-success" type="submit">Cetak List Pendaftar</button>
					</form> -->
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="table-responsive">		
						<table class="table table-bordered table-hover">
							<tr style="font-weight: bold; text-align: center;">
								<td> No. </td>
								<td> ID Pendaftaran </td>
								<td> Nama Lengkap </td>
								<td> Jenis Kelamin </td>
								<td> Asal Sekolah </td>
								<td> Tanggal Daftar </td>
								<td> Status Form </td>
								<td> Action </td>							
							</tr>
							<?php
							
							if (isset($_GET['cari'])) {
								$no = 1;
								$nama = $_GET['cari'];
								$query = mysqli_query($koneksi, "SELECT * FROM pendaftar WHERE IDPENDAFTAR LIKE '%".$nama."%' OR NAMAPENDAFTAR LIKE '%".$nama."%' OR SEKOLAHASAL LIKE '%".$nama."%'");
								if (!$query) {
									printf("Error: %s\n", mysqli_error($koneksi));
									exit();
								}
								while ($loop = mysqli_fetch_array($query)) {
							?>
								<tr style="text-align: center;">
								<td> <?php echo $no; ?> </td>
								<td> <?php echo $loop['IDPENDAFTAR']; ?> </td>
								<td> <?php echo $loop['NAMAPENDAFTAR']; ?> </td>
								<td> <?php echo $loop['JENISKELAMIN']; ?> </td>
								<td> <?php echo $loop['SEKOLAHASAL']; ?> </td>
								<td> <?php echo strftime("%d %B %Y", strtotime($loop['TANGGALDAFTAR'])); ?> </td>
								<td> <?php echo $loop['STATUSFORM']; ?> </td>
								<td><?php 
										if ($loop['STATUSFORM'] == 'Sudah Kembali') {
										?>
											<button type="button" name="kembali" class="btn btn-primary" disabled>Form Kembali</button></td>
										<?php
										}
										else {
										?>
											<button type="button" name="kembali" class="btn btn-default feed-id" data-toggle="modal" data-target="#myModal" data-id="<?php echo $loop['IDPENDAFTAR']; ?>">Form Kembali</button></td>
										<?php
										}
									 ?>
								</tr>
							<?php
								$no++;
								}
							}
							else if (isset($_GET['ta'])) {
								$no = 1;
								$nama = $_GET['ta'];
								$query = mysqli_query($koneksi, "SELECT * FROM pendaftar WHERE TAHUNAJARAN = '".$nama."'");
								if (!$query) {
									printf("Error: %s\n", mysqli_error($koneksi));
									exit();
								}
								while ($loop = mysqli_fetch_array($query)) {
							?>
								<tr style="text-align: center;">
								<td> <?php echo $no; ?> </td>
								<td> <?php echo $loop['IDPENDAFTAR']; ?> </td>
								<td> <?php echo $loop['NAMAPENDAFTAR']; ?> </td>
								<td> <?php echo $loop['JENISKELAMIN']; ?> </td>
								<td> <?php echo $loop['SEKOLAHASAL']; ?> </td>
								<td> <?php echo strftime("%d %B %Y", strtotime($loop['TANGGALDAFTAR'])); ?> </td>
								<td> <?php echo $loop['STATUSFORM']; ?> </td>
								<td><?php 
										if ($loop['STATUSFORM'] == 'Sudah Kembali') {
										?>
											<button type="button" name="kembali" class="btn btn-primary" disabled>Form Kembali</button></td>
										<?php
										}
										else {
										?>
											<button type="button" name="kembali" class="btn btn-default feed-id" data-toggle="modal" data-target="#myModal" data-id="<?php echo $loop['IDPENDAFTAR']; ?>">Form Kembali</button></td>
										<?php
										}
									 ?>
								</tr>
							<?php
								$no++;
								}
							}
							else {
								$no = 1; 
								$query1 = mysqli_query($koneksi, "SELECT * FROM pendaftar");
								while ($loop = mysqli_fetch_array($query1)) {
							?>
								<tr style="text-align: center;">
								<td> <?php echo $no; ?> </td>
								<td> <?php echo $loop['IDPENDAFTAR']; ?> </td>
								<td> <?php echo $loop['NAMAPENDAFTAR']; ?> </td>
								<td> <?php echo $loop['JENISKELAMIN']; ?> </td>
								<td><?php echo $loop['SEKOLAHASAL']; ?> </td>
								<td><?php echo strftime("%d %B %Y", strtotime($loop['TANGGALDAFTAR'])); ?> </td>
								<td> <?php echo $loop['STATUSFORM']; ?> </td>
								<td><?php 
										if ($loop['STATUSFORM'] == 'Sudah Kembali') {
										?>
											<button type="button" name="kembali" class="btn btn-primary" disabled>Form Kembali</button></td>
										<?php
										}
										else {
										?>
											<button type="button" name="kembali" class="btn btn-default feed-id" data-toggle="modal" data-target="#myModal" data-id="<?php echo $loop['IDPENDAFTAR']; ?>">Form Kembali</button></td>
										<?php
										}
									 ?>
								</tr>
							<?php
								$no++;
								}
							}
							?>
						</table>
					</div>
				</div>
			</div>
				
			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Notification</h4>
						</div>
						<div class="modal-body">
							Klik "Simpan" apabila uang pembayaran form pendaftaran sudah diterima. Anda yakin?
						</div>
						<form method="post" action="form-kembali.php">
							<input id="feed_id" name="cid" type="hidden" value="" />
							<div class="modal-footer">
								<button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
								<button type="submit" name="kembali" class="btn btn-success">Simpan</button>
							</div>
						</form>
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
	<script type="text/javascript">
	$(document).ready(function () {
		$('body').on('click', '.feed-id',function(){
			document.getElementById("feed_id").value = $(this).attr('data-id');
			console.log($(this).attr('data-id'));
		});
	});
	</script>
  </body>
</html>
