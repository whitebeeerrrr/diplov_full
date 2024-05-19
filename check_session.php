<?php
session_start();

if (!isset($_SESSION['user_id'])) {
    header("Location: personal_cabinet.php");
    exit;
}
?>
