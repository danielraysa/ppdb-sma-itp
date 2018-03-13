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
						<li role="presentation" class="active"><a href="jadwal-seleksi.php">Penjadwalan Seleksi</a></li>
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
						<h2>Penjadwalan Seleksi</h2>
              			<p>Jika jumlah pendaftar terlalu banyak dan tidak memungkinkan untuk melakukan seleksi dalam sehari, dapat dilakukan penjadwalan dengan kuota yang dapat ditentukan.</p>
					</div>
					<hr>
				</div>
			</div>
		</div>
	</div>

  <div class="container">
  <?php 
		if (isset($_GET['success'])) {
		?>
			<div class="alert alert-success alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<center><strong>Berhasil membuat jadwal.</strong></center>
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
        <form class="form-horizontal" method="post" action="buat-jadwal.php">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="bootstrap-iso">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">Jumlah Orang dan Tanggal</label>
                        <div class="col-lg-5 col-md-5 col-sm-5">
                            <input type="number" name="jumlah" class="form-control" id="inputEmail3" placeholder="Jumlah Pendaftar yang akan diwawancara dalam 1 hari" required>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4">
							<div class="input-group">
								<div class='input-group date' id='datepicker'>
									<span class="input-group-addon">
									<span class="glyphicon glyphicon-calendar"></span>
									</span>
									<input type="text" placeholder="Pilih Tanggal Seleksi" name="tanggalseleksi" ng-model="form.tanggal" class="form-control">
									<span class="input-group-btn">
										<button class="btn btn-success" name="simpan" type="submit">Jadwalkan</button>
									</span>
								</div>
							</div>
						</div>
                    </div>
                </div>
            </div>
        </form>
    </div>
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
						<td> Tanggal Seleksi </td>					
					</tr>
					<?php
						$no = 1; 
						$query1 = mysqli_query($koneksi, "SELECT * FROM penilaian p JOIN pendaftar pd ON p.IDPENDAFTAR = pd.IDPENDAFTAR WHERE p.STATUSSELEKSI = 'Belum'");
						while ($loop = mysqli_fetch_array($query1)) {
					?>
						<tr style="text-align: center;">
						<td> <?php echo $no; ?> </td>
						<td> <?php echo $loop['IDPENDAFTAR']; ?> </td>
						<td> <?php echo $loop['NAMAPENDAFTAR']; ?> </td>
						<td> <?php echo $loop['JENISKELAMIN']; ?> </td>
						<td><?php echo $loop['SEKOLAHASAL']; ?> </td>
						<td><?php echo $loop['TANGGALSELEKSI']; ?> </td>
						</tr>
					<?php
						$no++;
					}
					?>
				</table>
			</div>
		</div>
	</div>
  </div>
		
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

			<a href="" class="scrollup"><i class="fa fa-chevron-up"></i></a>


		</div>
	</footer>
<script type="text/javascript">
    $(function () {
      $('#datetimepicker').datetimepicker({
        format: 'DD MMMM YYYY HH:mm',
              });

      $('#datepicker').datetimepicker({
        format: 'DD MMMM YYYY',
      });

      $('#date').datetimepicker({
        format: 'DD MMMM YYYY',
      });

      $('#timepicker').datetimepicker({
        format: 'HH:mm'
      });
    });
  </script>
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
