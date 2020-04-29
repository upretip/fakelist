<?php

//only authenticated user can add post
//include '../Auth/conectDB.php'
include '../Auth/auth.php';
//session started by auth.php
include '../Auth/conectDB.php';

//use same user to post to database


//once fields are filled

if(isset($_POST['subcategory'])){

    if(empty($_POST['subcategory'])OR
        empty($_POST['location']) OR
        empty($_POST['title'])OR
        empty($_POST['email'])){
            //one of the three fields emtpy fix the issue
            echo 'please fill the form completely';
            echo '<br><a href = "newpost.html">Post again!</>';
        }else{
            //here we need to clean out user inputted values before putting into db

            $subcategory = $_POST['subcategory'];
            $location = $_POST['location'];
            $title = mysqli_real_escape_string($conn,$_POST['title']);
            $price = $_POST['price'];
            $email = mysqli_real_escape_string($conn, $_POST['email']);
            $description = mysqli_real_escape_string($conn, $_POST['description']);
            $terms = $_POST['terms'];
            $timestamp = time();
            $confemail = mysqli_real_escape_string($conn, $_POST['confemail']);
            /*if (!empty($_POST['image1'])){
            $image1= $_POST['image1'];
            $image2= $_POST['image2'];
            $imgae3= $_POST['image3'];
            $image4= $_POST['image4'];
            }*/


            if ($email !== $confemail) {
                echo 'emails do not match! <br><a href = "newpost.html">Try Again!</a>';
            }else{
                $query1 = mysqli_query($conn, "SELECT SubCategory_ID FROM SubCategory
                        WHERE CategoryName = '$subcategory' LIMIT 1;") OR die(mysqli_error($conn));
                $row1 = mysqli_fetch_array($query1, MYSQLI_NUM);
                $subcategory_id =$row1[0];
                

                $query2 = mysqli_query($conn, "SELECT Location_ID FROM Location
                        WHERE LocationName = '$location' LIMIT 1;") OR die(mysqli_error($conn));
                $row2 = mysqli_fetch_array($query2, MYSQLI_NUM);
                $location_id =$row2[0];
                
                
                //insert the foreign key reference once this works
                
               mysqli_query($conn,
                    "INSERT INTO Posts
                    (Title, Price, Description, Email, Agreement, TimeStamp, SubCategory_ID, Location_ID)
                    VALUES
                    ('$title', '$price', '$description', '$email', '$terms','$timestamp', '$subcategory_id', '$location_id');")OR die(mysqli_error($conn));

                echo  "post has been added <br> Return to <a href = 'newpost.html'> add more </a>";
                mysqli_close($conn);
                


            }
    }
}


?>