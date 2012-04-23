<?php
$user_password = $argv[1];
$absolut_path = $argv[2];
require_once($absolut_path.'/wp-includes/class-phpass.php');
$wp_hasher = new PasswordHash(8, TRUE);
$user_password = $wp_hasher->HashPassword($user_password);
print $user_password;
?>
