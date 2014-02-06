<?
$base_url = '/novarugby/';
$url = $_SERVER['REQUEST_URI'];
$rel_url = preg_replace('/^'.preg_quote($base_url,'/').'/','',$url);

if (preg_match('~^[a-z]*~',$rel_url,$matches)) {
    $section = $matches[0] ? $matches[0] : 'news';
}
if (preg_match('~\.([a-z]+$)~',$_SERVER['PHP_SELF'],$matches)) {
    $EXT = $matches[1];
}
$db = new PDO('mysql:host=localhost;dbname=novarugby', 'novarugby', 'Cardinal7');
?>
<? if ($EXT=="html"): ?>
<!DOCTYPE html>
<html>
    <head>
        <title>NOVA Rugby</title>
        <base href="<?= $base_url ?>">
        <link rel="stylesheet" href="style.css">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script type="text/javascript" src="main.js"></script>
        <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
    </head>
    <body class="<?= $section ?>">
        <header>
            <nav>
                <div>
                    <img src="img/logo-sm.png">
                    <ul>
                        <li><a href="./">News</a>
                        <li><a href="./schedule">Schedule</a>
                        <li><a href="./venue">Venue</a>
                        <li><a href="./roster">Roster</a>
                        <li><a href="./sponsors">Sponsors</a>
                        <li><a href="./about">About</a>
                    </ul>
                </div>
            </nav>
        </header>
        <div id="content">
<? require '_aside.html' ?>
            <main>
<? endif; ?>