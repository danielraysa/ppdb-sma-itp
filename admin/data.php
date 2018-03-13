
<?php

header('Content-Type: application/json');

//database
define('DB_HOST', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'smaitp');

//get connection
$mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

if(!$mysqli){
	die("Connection failed: " . $mysqli->error);
}

$query = sprintf("SELECT MONTH(TANGGALDAFTAR) as bulan, COUNT(*) as jumlah FROM pendaftar GROUP BY MONTH(TANGGALDAFTAR)");
$query1 = sprintf("SELECT JENISKELAMIN as jk, COUNT(*) as jumlah1 FROM pendaftar GROUP BY JENISKELAMIN");
//execute query
$result = $mysqli->query($query);
$result1 = $mysqli->query($query1);

//loop through the returned data
$data = array();
foreach ($result as $row) {
	$data[] = $row;
}
$data1 = array();
foreach ($result1 as $row1) {
	$data1[] = $row1;
}

//free memory associated with result
$result->close();

//close connection
$mysqli->close();

//now print the data
print json_encode($data);
//print json_encode($data1);
?>