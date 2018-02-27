<?php
    include "../koneksi.php";
    $id = $_POST['cid'];
    $nilai = $_POST['nilai'];
    $catatan = $_POST['catatan'];
    $lolos = $_POST['lolos'];
    setlocale (LC_TIME, 'INDONESIAN');
    $date = strftime("%d %B %Y", time());
    $query = mysqli_query($koneksi, "UPDATE penilaian SET NILAI = $nilai, CATATAN = '".$catatan."', STATUSSELEKSI = 'Sudah', TANGGALSELEKSI = '".$date."', LOLOS = '".$lolos."' WHERE IDPENDAFTAR = '".$id."'"); 
     
    if (!$query) {
        header("location:seleksi.php?error");
    }
    else {
        header("location:seleksi.php?success");
    }
    
?>