<?php
$message="";

$uname = "uname@ves.ac.in";
$pass = "gym!";
if(count($_POST)>0) {

if($_POST["userName"]==$uname && $_POST["password"]==$pass) {
$message = "You are successfully authenticated GYM user of PL fitness centre!";
} else {
$message = "Invalid Username or Password!";
}
}
?>
<form>
  <div class="imgcontainer">
    
    <font size="5" face="Courier New">
  <h3>CONGRATUATIONS!, you are logged in Successfully as a valid user. Thanks for being a user of PL fitness centre.</h3></font>

  
</body>
