<?php
require_once '../config/Database.php';
require_once '../model/Fact.php';
$database = new Database;
$db = $database->connect();
$cnt = new Fact($db);
$data = $cnt->read();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comments</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
        }

        .comment-form {
            margin-bottom: 20px;
        }

        .comment-form input[type="text"],
        .comment-form textarea {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .comment-form textarea {
            resize: vertical;
            min-height: 100px;
        }

        body {
            background-color: #232323;
        }

        .comment-form button {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .comment-list {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .comment {
            margin-bottom: 20px;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .comment p {
            margin: 0;
        }

        .comment .actions {
            margin-top: 10px;
            text-align: right;
        }

        .h6 {
            color: #232323;
        }

        .comment .actions button {
            margin-left: 10px;
        }

        .buttons{
            display: flex;
            flex-direction: row;
        }

        .delete-btn{
            color: red;
            background-color: #ccc;
            border: none;
            outline: none;
        }

        .delete-btn:hover{
            background-color: grey;
        }
    </style>
</head>

<body>
    <div class="container">
        <ul>
            <li>
                <a href="main.php" class="contrast"><strong>Home Page</strong></a>
            </li>
        </ul>
        <h1>Comments</h1>

        <div class="comment-form">
            <form action="../controller/fact.php" method="post">
                <input type="text" name="country_name" placeholder="Country Name">
                <textarea name="fact" placeholder="Write your comment here..." required></textarea>
                <button type="submit" name="create">Submit</button>
            </form>
        </div>

        <ul class="comment-list">
            <?php foreach ($data as $row) : ?>
                <li class="comment">
                    <p class="h6"><?= htmlspecialchars($row['country_name']) ?> , <?= htmlspecialchars($row['fact']) ?></p>
                    <div class="actions">
                        <form method="post" action="../controller/fact.php">
                            <input type="hidden" name="id" value="<?= $row['id'] ?>">

                        </form>
                        <form method="post" action="../controller/fact.php">
                            <input type="hidden" name="id" value="<?= $row['id'] ?>">
                            <input type="text" name="country_name" value="<?= htmlspecialchars($row['country_name']) ?>" placeholder="Country Name">
                            <textarea name="fact" placeholder="Write your comment here..." required><?= htmlspecialchars($row['fact']) ?></textarea>
                            <div class="buttons">
                                
                                <button type="submit" name="update">Update</button>
                                <button class="delete-btn" type="submit" name="delete">Delete</button>
                            </div>
                        </form>
                    </div>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</body>

</html>