<?php

function random_str(){ 

    $result="";
    for ($i = 1; $i <= 32; $i++) {

    $base10Rand = mt_rand(0, 15); 
    $newRand = base_convert($base10Rand, 10, 36);
    $result.=$newRand;
}
    return $result;

} 

print random_str();

?>