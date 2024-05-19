<?php
// Начало сессии
session_start();
// Очистка всех переменных сессии
session_unset();
// Уничтожение сессии
session_destroy();
// Перенаправление на главную страницу
header("Location: index.php");
exit();
?>
