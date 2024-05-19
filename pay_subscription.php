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

$subscription_id = $_POST['subscription_id'];
$cardNumber = $_POST['cardNumber'];
$cardExpiry = $_POST['cardExpiry'];
$cardCVC = $_POST['cardCVC'];

// Обработка оплаты (симуляция)

$stmt = $conn->prepare("UPDATE Subscriptions SET status='paid' WHERE id=? AND user_id=?");
$stmt->bind_param("ii", $subscription_id, $_SESSION['user_id']);
$stmt->execute();
$stmt->close();

$conn->close();

header("Location: profile.php");
exit();
?>
