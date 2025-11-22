<?php
session_start();
include 'config/database.php';
include 'includes/functions.php';

// Redirect to login if not authenticated
if (!isset($_SESSION['user_id']) && basename($_SERVER['PHP_SELF']) != 'login.php') {
    header("Location: login.php");
    exit();
}

// Include header
include 'includes/header.php';

// Determine which page to load
$page = isset($_GET['page']) ? $_GET['page'] : 'dashboard';

// Load the appropriate page
switch ($page) {
    case 'dashboard':
        include 'pages/dashboard.php';
        break;
    case 'inventory':
        include 'pages/inventory.php';
        break;
    case 'categories':
        include 'pages/categories.php';
        break;
    case 'reports':
        include 'pages/reports.php';
        break;
    case 'users':
        include 'pages/users.php';
        break;
    case 'settings':
        include 'pages/settings.php';
        break;
    default:
        include 'pages/dashboard.php';
        break;
}

// Include footer
include 'includes/footer.php';
?>