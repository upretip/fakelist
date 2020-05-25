<?php
//this is a basic php file that doesn't need to render

//it will run in the background if called

// Open a connection to the DB
//php variable name starts with $ and end each line with ; just like in sql
//so create a $conn {server:localhost, user:lamp, pass:1, db:fakerdb}
$conn = new mysqli('localhost', 'lamp', '1','fakerdb' );
if($conn-> connect_errno>0){
    die('Unable to connect to database[' .$conn->connect_error .']');
}

?>
