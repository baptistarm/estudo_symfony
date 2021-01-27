<?php
// phpinfo();
$host = 'db';
$user = 'devuser';
$password = 'devpass';
$db = 'test_db';

$conn = new mysqli($host, $user, $password, $db);

if ($conn->connect_error) {
    echo 'connection error' . $conn->connect_error;
}

echo "Successfully connected to MYSQL";
?>
