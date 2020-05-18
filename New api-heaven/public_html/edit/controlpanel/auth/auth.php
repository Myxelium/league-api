<?php 
if(!isset($_SESSION)){
    session_start();
}
if (!isset($_SESSION['username'])){
	echo '<label>Login</label>';
	echo "<form action='auth/functions.php' method='post'>
    <input class='form-control .w-25' type='email' placeholder='email' name='email'><br>
    <input class='form-control .w-25' type='password' placeholder='password' name='password'><br>
    <input class='form-control .w-25' type='submit' value='login'>
</form>";
}elseif(isset($_POST["signout"])){
    echo "Signed out";
    session_unset(); 
    session_destroy();
    header("Location: ../");
}else{
    echo "<h1>Logged in</h1><br><br>";

    echo "<form action=". htmlspecialchars($_SERVER['PHP_SELF']) ." method='post'><input type='submit' name='signout' class='form-control' value='Logout'></form>";
}
?>
