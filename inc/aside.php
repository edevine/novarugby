<?
$contacts = $db->query('select * from contacts where main = 1 order by `order` asc, name asc');
?>
<aside id="sidebar">
    <div id="social">
        <div>
            <a href="https://twitter.com/NovaRugby"><img src="img/icon-twitter.png" alt="Twitter"></a>
            <a href="https://www.facebook.com/groups/novarugby/"><img src="img/icon-facebook.png" alt="Facebook"></a>
            <a href="news.rss"><img src="img/icon-rss.png" alt="RSS"></a>
            <a href="https://groups.yahoo.com/neo/groups/novarugby/info"><img src="img/icon-yahoo.png" alt="Email"></a>
            <a href="mailto:newnovarecruit@gmail.com"><img src="img/icon-email.png" alt="Email"></a>
        </div>
    </div>
    <a class="twitter-timeline" width="320" height="400" data-dnt="true" href="https://twitter.com/NovaRugby" data-widget-id="430773984968187904">Tweets by @NovaRugby</a>
    <section class="contrast mailing-list">
        <h2>Mailing List</h2>
        <form class="centered" method="get" action="http://groups.yahoo.com/subscribe/novarugby" target="_blank">
            <p> <input type="text" name="user" size="30" placeholder="email@example.com">
            <p> <button type="submit">Join the List</button>
        </form>
    </section>
    <section class="contacts">
        <header>
            <h2>Contact</h2>
        </header>
        <ul class="contacts">
            <? while ($contact = $contacts->fetchObject()): ?>
            <li>
                <h5><?= $contact->title ?></h5>
                <p><?= $contact->name ?></p>
                <p><a href="mailto:<?= $contact->email ?>"><?= $contact->email ?></a></p>
                <p><a href="tel:<?= $contact->phone ?>"><?= format_phone($contact->phone) ?></a></p>
            </li>
            <? endwhile ?>
        </ul>
    </section>
</aside>