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

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['workout_id'])) {
        $workout_id = $_POST['workout_id'];

        $stmt = $conn->prepare("DELETE FROM Workouts WHERE id = ? AND user_id = ?");
        if ($stmt === false) {
            die("Ошибка подготовки запроса: " . $conn->error);
        }

        $stmt->bind_param("ii", $workout_id, $_SESSION['user_id']);
        if ($stmt->execute()) {
            // Успешное удаление
        } else {
            die("Ошибка выполнения запроса: " . $stmt->error);
        }
        $stmt->close();
    }
}

$conn->close();
header("Location: profile.php");
exit;
?>
