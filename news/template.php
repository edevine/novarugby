<?
$EXT = 'html';
$article = $db->prepare('select * from articles where url = ? limit 1');
$article->bindValue(1, 'news/' . $_GET['id']);
$article->execute();

if (!$article->rowCount()) {
    header("HTTP/1.0 404 Not Found");
    include INC_404;
    exit();
}

include INC_HEADER;

$article->bindColumn('category', $category);
$article->bindColumn('url', $url);
$article->bindColumn('imgurl', $imgurl);
$article->bindColumn('title', $title);
$article->bindColumn('pubdate', $pubdate);
$article->bindColumn('synopsis', $synopsis);
$article->bindColumn('body', $body);
$article->fetch(PDO::FETCH_BOUND);

$articles = $db->prepare('select * from articles where url != ? order by pubdate desc limit 4');
$articles->bindValue(1, 'news/' . $_GET['id']);
$articles->bindColumn('category', $category);
$articles->bindColumn('url', $url);
$articles->bindColumn('imgurl', $imgurl);
$articles->bindColumn('title', $title);
$articles->bindColumn('pubdate', $pubdate);
$articles->bindColumn('synopsis', $synopsis);
$articles->bindColumn('body', $body);
$articles->execute();
?>
<article class="full">
    <time datetime="<?= $pubdate ?>"><?= date('l, F j', strtotime($pubdate)) ?></time>
    <p class="category"><?= $category ?></p>
    <h1><?= $title ?></h1>
    <figure>
        <img src="<?= $imgurl ?>" alt="some pic">
    </figure>
    <?= $body ?>
</article>
<hr>
<h2>More News</h2>
<? while ($articles->fetch(PDO::FETCH_BOUND)): ?>
<article class="news-item">
    <figure>
        <img src="<?= $imgurl ?>" alt="some pic">
    </figure>
    <header>
        <time datetime="<?= $pubdate ?>"><?= date('l, F j', strtotime($pubdate)) ?></time>
        <p class="category"><?= $category ?></p>
        <h4><a href="<?= $url ?>"><?= $title ?></a></h4>
    </header>
    <p class="synopsis"><?= $synopsis ?></p>
</article>
<? endwhile ?>