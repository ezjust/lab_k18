<html>
<head>
<title>Query page</title>
</head>
<body>
<?php
$mysqli = new mysqli('127.0.0.1', 'admin', 'admin', 'main'); 
$query = "SELECT fullname FROM main WHERE id = 1";
$res = $mysqli->query($query);
$row = $res->fetch_assoc();
echo 'Hello, ' . $row['fullname'] . '<br> build # is number';
?>
</body>
</html>
