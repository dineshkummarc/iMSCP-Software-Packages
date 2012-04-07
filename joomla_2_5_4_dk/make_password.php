<?php
$user_password = $argv[1];
$salt = $argv[2];

$user_password_hash = md5($user_password.$salt);
$user_password_hash = $user_password_hash.':'.$salt;

print $user_password_hash;
?>