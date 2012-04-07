<?php

function random_str($length){ 

    $rangeMin = pow(36, $length-1);
    $rangeMax = pow(36, $length)-1;
    $base10Rand = mt_rand($rangeMin, $rangeMax); 
    $newRand = base_convert($base10Rand, 10, 36);
    
    return $newRand;

} 

$salt = random_str(8)."ju";
print $salt;

?>