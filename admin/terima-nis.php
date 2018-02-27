<?php
    include '../koneksi.php';
    $id = $_POST['cid'];
    $nis = $_POST['nis'];
    if (isset($_POST['save'])) {
        $query = mysqli_query($koneksi, "UPDATE siswa_baru SET NOMORINDUK = '".$nis."' WHERE IDPENDAFTAR = '".$id."'");
        if (!$query) {
            echo "Error!";
        }
        else {
        header("location:penerimaan.php?success");
        }
    }
    else {
        header("location:penerimaan.php?error");
    }
?>