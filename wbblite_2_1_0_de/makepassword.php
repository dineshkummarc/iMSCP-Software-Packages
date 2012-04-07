<?php
$passwort = $argv[1];
$passwortSaltDb = $argv[2];
$setPasswd = sha1($passwortSaltDb.sha1($passwortSaltDb.sha1($passwort)));
echo $setPasswd;
?>
