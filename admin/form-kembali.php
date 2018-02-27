<?php
    include "../koneksi.php";
    $id = $_POST['cid'];
    $query = mysqli_query($koneksi, "UPDATE pendaftar SET STATUSFORM = 'Sudah Kembali' WHERE IDPENDAFTAR = '".$id."'");
    $query1 = mysqli_query($koneksi, "INSERT INTO penilaian (IDPENDAFTAR, STATUSSELEKSI) VALUES ('".$id."', 'Belum')");
    if (!$query) {
        echo $id;
        echo " Error!";
    }
    else if (!$query1) {
        echo "Error!";
    }
    else {
        header("location:list-pendaftar.php");
    }

?>