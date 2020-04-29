<?php

session_start();
include  "../Auth/conectDB.php";

if(isset($_GET['search'])){
    
    $word = mysqli_real_escape_string($conn,$_GET['search']);
    $sql = "SELECT * FROM Posts WHERE 
            Description like '%".$word."%'
            OR
            Title like '%".$word."%';";//\"" . $_GET['search'] . "\"";
    $query = mysqli_query($conn,$sql) or die(mysqli_error($conn));
    
        echo '<p></p>';
        echo '<table border="1">';
        echo '<tr>';
        echo '<th>Title</th><th>Email</th><th>Price</th><th>Description</th>';
        echo '</tr>';
        
        while ($result= mysqli_fetch_assoc($query)) {
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