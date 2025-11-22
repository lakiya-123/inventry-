<?php
session_start();
include 'config/database.php';

// Check if already logged in
if (isset($_SESSION['user_id'])) {
    header("Location: index.php");
    exit();
}

$error = '';

// Handle login form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Validate login credentials
    $username = $_POST['username'] ?? '';
    $password = $_POST['password'] ?? '';
    
    if (empty($username) || empty($password)) {
        $error = "Please enter both username and password";
    } else {
        // Prepare SQL to prevent SQL injection
        $stmt = $conn->prepare("SELECT * FROM users WHERE username = ?");
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if ($result->num_rows === 1) {
            $user = $result->fetch_assoc();
            
            // Verify password
            if (password_verify($password, $user['password'])) {
                // Set session variables
                $_SESSION['user_id'] = $user['id'];
                $_SESSION['user_name'] = $user['full_name'];
                $_SESSION['user_role'] = $user['role'];
                
                // Log login activity
                $stmt = $conn->prepare("INSERT INTO activity_log (user_id, action, item_type, details) VALUES (?, 'login', 'user', 'User logged in')");
                $stmt->bind_param("i", $user['id']);
                $stmt->execute();
                
                // Redirect to dashboard
                header("Location: index.php");
                exit();
            } else {
                $error = "Invalid username or password";
            }
        } else {
            $error = "Invalid username or password";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Farm Inventory Management System</title>
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            overflow: hidden;
            font-family: 'Arial', sans-serif;
        }

        .login-container {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-image: url('assets/images/farm.jpg'), 
                            url('https://images.unsplash.com/photo-1500076656116-1247b1c67f07?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            position: relative;
        }

        .login-container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.3); /* Subtle overlay for readability */
            z-index: 1;
        }

        .login-card {
            background: transparent;
            padding: 2.5rem;
            border-radius: 12px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
            max-width: 400px;
            width: 90%;
            backdrop-filter: blur(10px);
            position: relative;
            z-index: 2;
            transition: transform 0.3s ease;
        }

        .login-card:hover {
            transform: translateY(-5px);
        }

        .login-card h1 {
            text-align: center;
            margin-bottom: 2rem;
            color: #2c3e50;
            font-size: 2.2rem;
            font-weight: bold;
            letter-spacing: 1px;
        }

        .alert-danger {
            background-color: #f8d7da;
            color: #721c24;
            padding: 0.75rem 1rem;
            border-radius: 6px;
            margin-bottom: 1.5rem;
            font-size: 0.9rem;
            text-align: center;
            border: 1px solid #721c24;
        }

        .login-form-group {
            margin-bottom: 1.5rem;
            position: relative;
        }

        .login-form-group label {
            display: block;
            margin-bottom: 0.5rem;
            color: #34495e;
            font-weight: 500;
            font-size: 1rem;
        }

        .login-input {
            width: 100%;
            padding: 0.75rem 0.75rem 0.75rem 2.5rem;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 1rem;
            box-sizing: border-box;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .login-input:focus {
            outline: none;
            border-color:rgb(64, 170, 89);
            box-shadow: 0 0 8px rgba(40, 167, 69, 0.3);
        }

        .login-form-group i {
            position: absolute;
            left: 0.75rem;
            top: 2.4rem;
            color: #34495e;
            font-size: 1.1rem;
        }

        .login-button {
            width: 100%;
            padding: 0.85rem;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 1.1rem;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
        }

        .login-button:hover {
            background-color: #218838;
            transform: scale(1.02);
        }

        .login-button:active {
            transform: scale(0.98);
        }

        .login-footer {
            text-align: center;
            margin-top: 1.5rem;
            color: #666;
            font-size: 0.9rem;
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            .login-card {
                padding: 1.5rem;
                width: 95%;
            }

            .login-card h1 {
                font-size: 1.8rem;
            }

            .login-input {
                font-size: 0.9rem;
            }

            .login-button {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-card">
            <h1>Farm Inventory</h1>
            
            <?php if (!empty($error)): ?>
                <div class="alert alert-danger">
                    <?php echo $error; ?>
                </div>
            <?php endif; ?>
            
            <form method="POST" action="login.php">
                <div class="login-form-group">
                    <label for="username">Username</label>
                    <i class="fas fa-user"></i>
                    <input type="text" id="username" name="username" class="login-input" required>
                </div>
                
                <div class="login-form-group">
                    <label for="password">Password</label>
                    <i class="fas fa-lock"></i>
                    <input type="password" id="password" name="password" class="login-input" required>
                </div>
                
                <button type="submit" class="login-button">
                    <i class="fas fa-sign-in-alt"></i> Login
                </button>
            </form>
        </div>
    </div>

    <script>
        // Log background image URL for debugging
        console.log("Attempting to load background image: assets/images/farm.jpg");
    </script>
</body>
</html>