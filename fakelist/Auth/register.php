<?php
//from register.html to register new users
session_start();
    include 'conectDB.php';
    //once the form is filled
    if(isset($_REQUEST['username'])){
        //query will be sent once the submit button is hit on html
        //check whether all fields are filled. 
        //On HTML we specified these fields cannot be empty so this is just extra check
/*
        if(empty($_POST['username'])OR
        empty($_POST['password'])OR
        empty($_POST['email']) ){
        
        echo "Please fill all question properly";

        //after confirming that fields are filled in check for values
*/
        $username = mysqli_real_escape_string($conn,$_POST['username']);
        $password = md5(mysqli_real_escape_string($conn,$_POST['password']));
        $email = mysqli_real_escape_string($conn,$_POST['email']);

        
        //check if the new username/email is already taken
        $query = "SELECT count(id) FROM login 
        where username ='$username' or email ='$email' ";

        $result = mysqli_query($conn, $query) or die(mysql_error());
        list($count)= mysqli_fetch_row($result);

        if($count == 0){
            $result_2 = mysqli_query($conn, "INSERT into login 
                        (username, password, email)
                        VALUES
                        ('$username', '$password', '$email')")
                        OR die(mysql_error());
                       

            echo '<h4>You are successfully registered!</h4>
                <br><a href="login.php">Please Click here to Login</a>';
            }else{
            echo 'Username or Email address already taken! <br><br>
                <a href = "register.html">Try again</a>  with different username/email<br>
                <br> or  <a href = "forgotpwd.html">forgot password </a>';
            }
        }
    
?>
