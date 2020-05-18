<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
require("../../../../connection.php");

if(!isset($_SESSION)){
    session_start();
}
if (isset($_SESSION['username'])){
    echo '<label>Register a new user</label>';
    if(!empty($_POST['username']) && !empty($_POST['email']) && !empty($_POST['password'])){
        $username = $_POST['username'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        //$tobedel = $conn->query("SELECT * FROM `simple_login` WHERE `username` = '$username' OR `email` = '$email'")->fetch();
        $tobedel = $conn->prepare("SELECT * FROM `simple_login` WHERE `username` = ? OR `email` = ?");
        $tobedel->execute([$username, $email]);
        $arr = $tobedel->fetch(PDO::FETCH_ASSOC);
        // if($tobedel["username"] == "" && $tobedel["email"] == ""){
        if($arr == ""){
            $hash = password_hash($password, PASSWORD_BCRYPT);
            $stmt = $conn->prepare("INSERT INTO simple_login SET username=?, email=?, password=?");
            $stmt->execute([$username, $email, $hash]);
            echo "Registration complete.";
            $_SESSION["champ_reg"] = "<font color='green'>Registration complete.</font>";
            header("Location: ../");
        }else{
            echo "Username or Email already exist.";
            $_SESSION["champ_reg"] = "<font color='red'>Username or Email already exist.</font>";
            header("Location: ../");
        }
        
    }else{
        if(isset($_POST['sendingdata'])){
        echo "You need to fill in all information.";
        $_SESSION["champ_reg"] = "<font color='red'>You need to fill in all information.</font>";
        header("Location: ../");
        }
    }
    echo "<form action='". htmlspecialchars($_SERVER['PHP_SELF']) ."' method='post'>
    <input class='form-control .w-25' required type='text' placeholder='username' name='username'><br>
    <input class='form-control .w-25' required type='email' placeholder='email' name='email'><br>
    <input class='form-control .w-25' required type='password' placeholder='password' name='password'><br>
    <input class='form-control .w-25' name='sendingdata' type='submit' value='login'>
    </form>";
}
?>