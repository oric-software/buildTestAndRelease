<?php
$file=$argv[1];
$hash=$argv[2];
$cpu=$argv[3];
$archive=$argv[4];

if (isset($argv[5]))
{
    $target=$argv[5];
}
else
    $target="official";

$url="https://cdn.oric.org/publish.php?hash=$hash&path=/home/oricoujr/www/ftp/orix/dists/$target/$archive/$cpu/$file";
$image_path="$file";
$file_on_dir_not_url="";
$image = fopen($image_path, "rb");

 $curl = curl_init();
 curl_setopt($curl, CURLOPT_CONNECTTIMEOUT, 2);
 curl_setopt($curl, CURLOPT_HEADER, false);
 curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
 curl_setopt($curl, CURLOPT_BINARYTRANSFER, 1);
 curl_setopt($curl, CURLOPT_URL, $url);

 curl_setopt($curl, CURLOPT_PUT, 1);
 curl_setopt($curl, CURLOPT_INFILE, $image);
 
 
 curl_setopt($curl, CURLOPT_INFILESIZE, filesize($image_path));
//
 $result = curl_exec($curl);
 curl_close($curl); 
?>
