<section>
    <h2>Update Roster Info</h2>
    <form class="columns">
        <p>
            <label>Name:</label>
            <input type="text" value="<?= $user->name ?>" required>
        </p>
        <p>
            <label>Email:</label>
            <input type="email" value="<?= $user->email ?>" required>
        </p>
        <p>
            <label>Phone:</label>
            <input type="tel">
        </p>
        <p>
            <label>Status:</label>
            <select name="status">
                <option value="1">Active</option>
                <option value="0">Inactive</option>
            </select>
        </p>
        <fieldset>
            <legend>Position:</legend>
            <ul>
                <li><label><input type="checkbox" name="position[]" value="1"> Prop</label></li>
                <li><label><input type="checkbox" name="position[]" value="2"> Hooker</label></li>
                <li><label><input type="checkbox" name="position[]" value="3"> Lock</label></li>
                <li><label><input type="checkbox" name="position[]" value="6"> Flanker</label></li>
                <li><label><input type="checkbox" name="position[]" value="8"> Eightman</label></li>
            </ul>
            <ul>
                <li><label><input type="checkbox" name="position[]" value="9"> Scrumhalf</label></li>
                <li><label><input type="checkbox" name="position[]" value="10"> Flyhalf</label></li>
                <li><label><input type="checkbox" name="position[]" value="11"> Wing</label></li>
                <li><label><input type="checkbox" name="position[]" value="12"> Center</label></li>
                <li><label><input type="checkbox" name="position[]" value="15"> Fullback</label></li>
            </ul>
        </fieldset>
        <p>
            <label>Height (in):</label>
            <input type="number" min="60" max="84" value="<?= $user->height ?>" required>
        </p>
        <p>
            <label>Weight (lbs):</label>
            <input type="number" min="150" max="400" step="5" value="<?= $user->weight ?>" required>
        </p>
        <p>
            <label>Birthday:</label>
            <input type="date" required>
        </p>
        <p>
            <label>School:</label>
            <input type="text" value="<?= $user->school ?>">
        </p>
        <p class="buttons">
            <button type="submit">Submit</button>
        </p>
    </form>
</section>
<section>
    <h2>Change Password</h2>
    <form class="columns">
        <p><label>Old Password:</label><input type="password" required></p>
        <p><label>New Password:</label><input type="password" required></p>
        <p><label>New Password:</label><input type="password" required></p>
        <p><button type="submit">Submit</button></p>
    </form>
</section>