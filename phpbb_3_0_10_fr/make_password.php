<?php
$user_password = $argv[1];

$user_password_hash = md5($user_password);

print $user_password_hash;

?>