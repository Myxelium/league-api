<?php
    $servername = "";
    $username = "";
    $password = "";
    $dbname = "";
    if(basename($_SERVER['SCRIPT_FILENAME'])==="index.php"){
            $conn = mysqli_connect($servername, $username, $password, $dbname); // Ansluter till databasen
            if (!$conn) { // om det blir fel vid anslutningen till databasen så skrivs ett errormedellande ut
                die("Connection failed: " . mysqli_connect_error());
            }
    }else{
        try {
            $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
            
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            }
        catch(PDOException $e)
            {
            echo "Connection failed: " . $e->getMessage();
            }
    }
?>