<?php

include '../koneksi.php';
if (isset($_POST['simpan'])) {
    $jumlah = $_POST['jumlah'];
    $tanggal = $_POST['tanggalseleksi'];
    $query = mysqli_query($koneksi, "UPDATE penilaian SET TANGGALSELEKSI = '".$tanggal."' WHERE TANGGALSELEKSI = '' LIMIT $jumlah");
    header("location: jadwal-seleksi.php?success");
}
else {
    header("location: jadwal-seleksi.php?error");
}


?>