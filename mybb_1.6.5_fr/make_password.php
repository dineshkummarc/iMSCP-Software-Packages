<?php
$salt = $argv[1];
$user_password = $argv[2];

$user_password_hash = md5(md5($salt).md5($user_password));

print $user_password_hash;

?>