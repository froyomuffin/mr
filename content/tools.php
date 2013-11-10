<?php
	function resize($src, $dwidth){
		$image = imagecreatefromjpeg($src);
		$width = imagesx($image);
		$height = imagesy($image);
		
		$tempdest = "images/temp";
		
		$dheight = floor($height*($dwidth/$width));
		
		$vimage = imagecreatetruecolor($dwidth, $dheight);
		
		imagecopyresized($vimage, $image, 0,0,0,0, $dwidth, $dheight, $width, $height);
		
		imagejpeg($vimage, $tempdest);
	}
?>