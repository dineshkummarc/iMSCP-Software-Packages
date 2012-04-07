<?php
class crypt
{
	public static function hmac($key,$data,$hashfunc='sha1')
	{
		$blocksize=64;
		if ($hashfunc != 'sha1') {
			$hashfunc = 'md5';
		}
		
		if (strlen($key)>$blocksize) {
			$key=pack('H*', $hashfunc($key));
		}
		
		$key=str_pad($key,$blocksize,chr(0x00));
		$ipad=str_repeat(chr(0x36),$blocksize);
		$opad=str_repeat(chr(0x5c),$blocksize);
		$hmac = pack('H*',$hashfunc(($key^$opad).pack('H*',$hashfunc(($key^$ipad).$data))));
		return bin2hex($hmac);
	}

	public static function createPassword()
	{
		$pwd = array();
		$chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
		$chars2 = '$!@';
		
		foreach (range(0,7) as $i) {
			$pwd[] = $chars[rand(0,strlen($chars)-1)];
		}
		
		$pos1 = array_rand(array(0,1,2,3));
		$pos2 = array_rand(array(4,5,6,7));
		$pwd[$pos1] = $chars2[rand(0,strlen($chars2)-1)];
		$pwd[$pos2] = $chars2[rand(0,strlen($chars2)-1)];
		
		return implode('',$pwd);
	}
}
?>