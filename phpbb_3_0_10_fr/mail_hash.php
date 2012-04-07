<?php
$mail = $argv[1];
function email_hash($email)
{
	return sprintf('%u', crc32(strtolower($email))) . strlen($email);
}

print email_hash($mail);

?>