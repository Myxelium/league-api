<?phperror_reporting(E_ALL);ini_set('display_errors', 1);session_start();    require("../../../../connection.php");    if (!isset($_SESSION['username'])){        include("../auth/auth.php");    }else{        if(isset($_POST['champ'])){            $champion = $_POST['champ'];        }        if(isset($champion)){            try {                $tobedel = $conn->prepare("SELECT `champ` FROM `league` WHERE `champ` = ?");                $tobedel->execute([$champion]);                $arr = $tobedel->fetchAll(PDO::FETCH_ASSOC);                //$tobedel = $conn->query("SELECT `champ` FROM `league` WHERE `champ` = '$champion'")->fetch();                if($arr == ""){                    $_SESSION["champ_del"] = "<font color='red'>Champion cannot be deleted because it doesn't exist.</font>";                    header("Location: ../");                }else{                    $sql = "DELETE FROM `league` WHERE champ='$champion'";                    $conn->exec($sql);                    echo "Champion deleted successfully";                    $_SESSION["champ_del"] = "<font color='green'>Champion " . $champion ." has been deleted successfully.</font>";                    header("Location: ../");                }            } catch(PDOException $e) {                echo $sql . "<br>" . $e->getMessage();            }        }        else{            echo '<label>Remove Champion</label><select class="form-control" form="perkzform" name="champ" id="sel1">';            $stmt = $conn->query("SELECT `champ` FROM `league`");            $stmt->execute([$limit, $offset]);             while ($row = $stmt->fetch()) {            echo "<option>" . $row['champ']."</option>";            }            echo "</select>";            echo '<form action="' . htmlspecialchars($_SERVER["PHP_SELF"]) .'" id="perkzform" method="post">';            echo '<input type="submit" value="Remove">';            echo '</form>';        }                }?>    