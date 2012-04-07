<?php
$user_password = $argv[1];
$salt = $argv[2];
$user_password_hash = md5($salt.$user_password);

print $user_password_hash;
?>