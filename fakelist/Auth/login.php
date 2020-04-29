<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
    <script src="main.js"></script>
</head>
<body>
    
<!--this document has both html and php on it. This script renders HTML and also authenticates log in-->



<?php
//indlude the connectDB.php file. 
//this will cause the db to be connected to the workflow
include 'conectDB.php';

//iniitalize a session
session_start();
if (isset($_POST['username'])){

    //now check whether the login form is filled or not
    If(empty($_POST['username']) OR empty($_POST['password'])){
        //user did not fill the form completely
        echo 'Please fill in username and password fields!';
    }else{
        //if both login field is filled, time to check for sql injection and 
        //md5 to hash the password to 128-bit fingerprint to protect user password
        
        $username = mysqli_real_escape_string($conn,$_POST['username']);
        $password = md5(mysqli_real_escape_string($conn,$_POST['password']));
        
        //check whether the username +password combo match
        $query = "SELECT * FROM login 
        WHERE username ='$username' and password = '$password'";

        $result = mysqli_query($conn, $query)or die(mysql_error());
        $rows = mysqli_num_rows($result);
            if($rows ==1){
                $_SESSION['username']= $username;
                //redirect user to home page with previlaged info

                //echo "Welcome .$username. <br> <h3> Click <a href = 'index.html'> here</a> to go to homepage</h3>";

                header("Location: index.php");
            }else{
                echo "<div class = 'form'>
                <h4>Username/password is incorrect</h4>
                <br>
                Click here to <a href = 'login.php'>Login again</a></div>";
            }
    }
    }else{

?>

<form action="" method="post" name ='login'>

            Username: <input type="text" name="username" required><br>
            <br>
            Password: <input type="password" name="password" required><br>
            <br>
            <input type="submit" value="Login!">
            
        </form>
        <a href = "forgotpwd.php">Forgot Password?</a><br>
        <a href="register.html">Not Registered Yet?</a>
    <?php } ?>
    </body>
</html>

