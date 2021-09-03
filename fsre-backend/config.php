<?php 
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "senzori";
    
    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);
    // Check connection
    $response = array();
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } else {
        $sql = "select * from stroj1";
        $result = mysqli_query($conn, $sql);
        if($result){
            header("Content-Type: JSON");
            header("Access-Control-Allow-Origin: *");
            $i=0;
            while($row = mysqli_fetch_assoc($result)){
                $response[$i]['idmjerenja'] = $row['idmjerenja'];
                $response[$i]['vibr'] = $row['vibr'];
                $response[$i]['avibr'] = $row['avibr'];
                $response[$i]['temper'] = $row['temper'];
                $i++;
            }
            echo json_encode($response, JSON_PRETTY_PRINT);
        }
    }
?>  