<?php
//check if the user is logged in 
include "../Auth/auth.php";
include "../Auth/conectDB.php";

if (!isset($_SESSION['username'])){
    header('Location: ../Auth/login.php');
}else{

    $sql = "SELECT * from Posts where SubCategory_ID=1;";
    $request = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    echo '<p></p>';
        echo '<table border="1">';
        echo '<tr>';
        echo '<th>Title</th><th>Email</th><th>Price</th><th>Description</th>';
        echo '</tr>';
        
        while ($result= mysqli_fetch_assoc($request)) {
            echo '<tr>';
            echo '<td>' . $result['Title'] . '</td>';
            echo '<td>' . $result['Email'] . '</td>';
            echo '<td>' . $result['Price'] . '</td>';
            echo '<td>' . $result['Description'] . '</td>';
            echo '</tr>';
        }
        echo '</table>';
        echo '<p></p>';
}

?>