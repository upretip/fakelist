<?php
include "auth.php";
echo  $_SESSION['username']. '  This is Fakelist';
echo '<br>We want to revolutionize your world!<br>';
?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Mini fakelist UCSC</title>
</head>

<body>
	<br>
	<a href="../NewPost/newpost.html">New Post</a>
	<p />
	<a href="logout.php">Logout</a>
	<p />
	<a href="https://www.google.com">Help</a>
	<p />
	<p><label for = "site-search">
		Search </label></p>
	<form name="search" action="../search/search.php" method="get">
		<input type="search" name="search">
		<input type="Submit" value="Submit">
		<input type="Reset" value="Reset">
	</form><br>
	<table border="a">
		<tr>
			<th>For Sale</th>
			<th>Services</th>
			<th>Jobs</th>
			<th>Country</th>
			<th>Locations</th>
		</tr>
		<tr>
			<td>
				<a href="../search/books.php">Books</a>
			</td>
			<td>
				<a href="../uc.php">Computer</a>
			</td>
			<td>
				<a href="../uc.php">Full-Time</a>
			</td>
			<td>
				<a href="../uc.php">USA</a>
			</td>
			<td>
				<a href="../uc.php">Cupertino</a>
			</td>
		</tr>
		<tr>
			<td>
				<a href="../search/electronics.php">Electronics</a>
			</td>
			<td>
				<a href="../uc.php">Financial</a>
			</td>
			<td>
				<a href="../uc.php">Part-Time</a>
			</td>
			<td>
				<a href="../uc.php">India</a>
			</td>
			<td>
				<a href="../uc.php">Mumbai</a>
			</td>
		</tr>
		<tr>
			<td>
				<a href="../search/household.php">Household</a>
			</td>
			<td>
				<a href="../uc.php">Lessons</a>
			</td>
			<td>
				<a href="../uc.php">Volunteering</a>
			</td>
			<td>
				<a href="../uc.php">Europe</a>
			</td>
			<td>
				<a href="../uc.php">London</a>
			</td>
		</tr>
	</table>
	<br>
	<a href="../terms.html">Terms and Conditions</a>
	<p />
	<a href="../about.html">About Us</a>


</body>

</html>