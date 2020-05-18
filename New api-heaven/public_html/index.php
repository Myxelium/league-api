<?php
//rune images link
//http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/
require("../connection.php");
$iconpath_keystone = "http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/";
$file_format = ".png";
$champions = htmlspecialchars($_GET["champ"]); // hämtar värdet från attributet champ
header("Access-Control-Allow-Origin: *"); //Tar hand om CORS policy vilket annars blockerar andra från att använda api'n
//Hämtar värdena från databasen. Fungerar även utan if-sats, ifsatsen var mer av en test grej.
if (!$sql = "SELECT `champ`, `main`, `main_rune1`, `main_rune2`, `main_rune3`, `main_rune4`, `secondary`, `secondary_rune1`, `secondary_rune2`, `bonus1`, `bonus2`, `bonus3` FROM `league` WHERE `champ` = '$champions' OR `nickname` = '$champions' OR `nickname2` = '$champions' OR `nickname3` = '$champions'"){
    http_response_code(400); // Errorkod ifall man har angivit champions variabeln fel och det inte kan hittas i databasen
    echo "Check the input and try again.";
}else{
    $assetconnection = "SELECT * FROM `assets` WHERE 1";
    $assetresult = mysqli_query($conn, $assetconnection);
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0){ 
        if(!$champions == ""){
            while($assets = mysqli_fetch_assoc($assetresult)) {
                $new_array[$assets['name']] = $assets['url'];
            }
                // output data of each row
                while($row = mysqli_fetch_assoc($result)) {
                    $iconname = $row["champ"]; // gör första bokstaven i champ stor.
                    $data = array( // Skapar en array
                        "runes" => array( //array in array
                            "general" => array( //Yes another array inside array in array
                                "champion" => $row["champ"], // skriver ut champion namnet från databasen, taget i från result
                                "icon" => "/edit/championTiles/" . $iconname . "_0.jpg", //adress till ikoner för champions
                                "map" => "http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perkstyles.json",
                                "background" => $new_array[$row["main"] . "bg"]
                            ),
                           // array(
                                "main_tree" => array( // lista med första runorna
                                    "keystone" => $row["main"],
                                    "keystone_icon" => $new_array[$row["main"]],
                                    "slot1" => $row["main_rune1"],
                                    "slot1_icon" => $new_array[$row["main_rune1"]],
                                    "slot2" => $row["main_rune2"],
                                    "slot2_icon" => $new_array[$row["main_rune2"]],
                                    "slot3" => $row["main_rune3"],
                                    "slot3_icon" => $new_array[$row["main_rune3"]],
                                    "slot4" => $row["main_rune4"],
                                    "slot4_icon" => $new_array[$row["main_rune4"]]
                             //   ),
                            ),
                           // array(  // Lista med andra rune trädet, skriver ut från databasen
                                "secondary_tree" => array(
                                    "keystone" => $row["secondary"],
                                    "keystone_icon" => $new_array[$row["secondary"]],
                                    "slot1" => $row["secondary_rune1"],
                                    "slot1_icon" => $new_array[$row["secondary_rune1"]],
                                    "slot2" => $row["secondary_rune2"],
                                    "slot2_icon" => $new_array[$row["secondary_rune2"]]
                              //  ),
                            ),
                           // array(  //Lite shards för extra damage, skriver ut från databasen
                                "shards" => array(
                                    "slot1" => $row["bonus1"],
                                    "slot1_icon" => $new_array[$row["bonus1"]],
                                    "slot2" => $row["bonus2"],
                                    "slot2_icon" => $new_array[$row["bonus2"]],
                                    "slot3" => $row["bonus3"],
                                    "slot3_icon" => $new_array[$row["bonus3"]]
                             //   ),
                            ),
                        )
                    );
                }
                header('Content-Type: application/json'); // Gör dokumentet till json-formatet om det inte blir error och if-satsen denna rad ligger i blir false
                echo json_encode($data); //encodar det till json - skriver ut det
    } else {
        http_response_code(400); // Om champions värdet inte matchar databasen. header() funktionen visar webbläsarens standard sida för errorkoderna.
        echo "Check the input and try again."; // Litet meddelande 
        echo "'" . $champions . "' could not be found. Make sure you use lowercases and no spaces between the names.";
    }
}else{
    http_response_code(400);
    echo "Check the input and try again."; // Litet meddelande 
    echo "'" . $champions . "' could not be found. Make sure you use lowercases and no spaces between the names.";
}
}
mysqli_close($conn); //Stänger anslutningen till databasen.
?>