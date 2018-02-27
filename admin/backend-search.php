<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "smaitp");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$term = mysqli_real_escape_string($link, $_REQUEST['term']);
 
if(isset($term)){
    // Attempt select query execution
    $sql = "SELECT * FROM pendaftar WHERE NAMAPENDAFTAR LIKE '%" . $term . "%'";
    if($result = mysqli_query($link, $sql)){
        if(mysqli_num_rows($result) > 0){
            $no = 1; 
            while($row = mysqli_fetch_array($result)){
                echo "<tr style='text-align: center;'>";
                echo "<td>".$no."</td>";
                echo "<td>".$row['IDPENDAFTAR']."</td>";
                echo "<td>".$row['NAMAPENDAFTAR']."</td>";
                echo "<td>".$row['JENISKELAMIN']."</td>";
                echo "<td>".$row['SEKOLAHASAL']."</td>";
                echo "<td>".date('d-m-Y', strtotime($row['TANGGALDAFTAR']))."</td>";
                echo "<td><button type='button' name='kembali' class='btn btn-default' data-toggle='moda' data-target='#myModal'>Form Kembali</button></td>";
                echo "</tr>";
                $no++;
            }
            // Close result set
            mysqli_free_result($result);
        } else{
            echo "<tr style='text-align: center;'>";
            echo "<td>0</td>";
            echo "<td></td>";
            echo "<td></td>";
            echo "<td></td>";
            echo "<td></td>";
            echo "<td></td>";
            echo "<td></td>";
            echo "</tr>";
        }
    } else{
        echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
    }
}
 
// close connection
mysqli_close($link);
?>