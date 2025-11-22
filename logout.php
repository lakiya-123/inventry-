<?php
session_start();

// Log logout activity if user is logged in
if (isset($_SESSION['user_id'])) {
    include 'config/database.php';
    
    $stmt = $conn->prepare("INSERT INTO activity_log (user_id, action, item_type, details) VALUES (?, 'logout', 'user', 'User logged out')");
    $stmt->bind_param("i", $_SESSION['user_id']);
    $stmt->execute();
}

// Destroy the session
session_unset();
session_destroy();

// Redirect to login page
header("Location: login.php");
exit();
?>