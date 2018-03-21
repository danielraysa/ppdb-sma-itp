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

if (isset($_GET['ta'])) {
$query = sprintf("SELECT JENISKELAMIN as jk, COUNT(*) as jumlah FROM pendaftar WHERE TAHUNAJARAN = '".$_GET['ta']."' GROUP BY JENISKELAMIN");
}
else {
$query = sprintf("SELECT JENISKELAMIN as jk, COUNT(*) as jumlah FROM pendaftar GROUP BY JENISKELAMIN");
}
//execute query
$result = $mysqli->query($query);

//loop through the returned data
$data = array();
foreach ($result as $row) {
	$data[] = $row;
}

//free memory associated with result
$result->close();

//close connection
$mysqli->close();

//now print the data
print json_encode($data);

?>