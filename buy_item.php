<?php
session_start();

if (!isset($_SESSION['user_id'])) {
    header("Location: personal_cabinet.php");
    exit;
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "FITDatabase";
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Ошибка подключения к базе данных: " . $conn->connect_error);
}

$user_id = $_SESSION['user_id'];
$item = $_POST['item'];
$price = $_POST['price'];

$stmt = $conn->prepare("INSERT INTO Purchases (user_id, item, price) VALUES (?, ?, ?)");
$stmt->bind_param("iss", $user_id, $item, $price);
$stmt->execute();
$stmt->close();

$conn->close();

header("Location: profile.php");
exit();
?>
