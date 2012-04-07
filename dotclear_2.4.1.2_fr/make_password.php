<?
include ('lib.crypt.php');
$salt = $argv[2];
$user_password = $argv[1];

$user_password_hash = crypt::hmac($salt,$user_password);;

print $user_password_hash;

?>