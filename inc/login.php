<section class="contrast">
    <h2>Login</h2>
    <form method="post" action="/admin/" class="login">
        <p>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required placeholder="email@example.com">
        </p>
        <p>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </p>
<? if (isset($login_error)): ?>
        <p>
            <output><?= $login_error ?></output>
        </p>
<? endif; ?>
        <p>
            <button type="submit">Submit</button>
            <button type="rerset">Clear</button>
        </p>
    </form>
</section>