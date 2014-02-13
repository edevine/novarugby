<?
// Place all sensitive information in _config.php
// See _config.EXAMPLE.php for format
require '_config.php';

date_default_timezone_set('America/New_York');

$dir = str_replace(DIRECTORY_SEPARATOR, '/', __DIR__);
$root = preg_replace('~/$~', '', $_SERVER['DOCUMENT_ROOT']);
$base_url = str_replace($root, '', $dir);
$base_url .= substr($base_url,-1) != '/' ? '/' : '';

$url = $_SERVER['REQUEST_URI'];
$rel_url = preg_replace('/^'.preg_quote($base_url,'/').'/','',$url);

if (preg_match('~^[a-z]*~',$rel_url,$matches)) {
    $section = $matches[0] ? $matches[0] : 'news';
}
if (preg_match('~\.([a-z]+$)~',$_SERVER['PHP_SELF'],$matches)) {
    $EXT = $matches[1];
}
$db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USER, DB_PASS);

function format_phone($int) {
    if(preg_match( '/^(\d{3})(\d{3})(\d{4})$/', $int,  $matches )) {
        return '(' . $matches[1] . ') ' .$matches[2] . '-' . $matches[3];
    }
}

if ($EXT=='html')
    include '_header.html';