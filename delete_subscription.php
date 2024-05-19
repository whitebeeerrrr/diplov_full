<?php
session_start();

if (!isset($_SESSION['user_id'])) {
    header("Location: personal_cabinet.php");
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $subscription_id = $_POST['subscription_id'];

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "FITDatabase";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Ошибка подключения: " . $conn->connect_error);
    }

    $subscription_id = $conn->real_escape_string($subscription_id);

    // Удаление подписки
    $sql = "DELETE FROM Subscriptions WHERE id='$subscription_id' AND user_id='" . $_SESSION['user_id'] . "'";
    if ($conn->query($sql) === TRUE) {
        // Перенаправление обратно в личный кабинет
        header("Location: profile.php");
        exit;
    } else {
        echo "Ошибка удаления записи: " . $conn->error;
    }

    $conn->close();
} else {
    header("Location: profile.php");
    exit;
}
?>
