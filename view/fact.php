<?php
require_once '../config/Database.php';
require_once '../model/Fact.php';
$database=new Database;
$db=$database->connect();
$cnt=new Fact($db);
$data=$cnt->read();
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Comments</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
        }

        .comment-form {
            margin-bottom: 20px;
        }

        .comment-form textarea {
            width: 100%;
            height: 100px;
            resize: vertical;
        }

        .comment-list {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .comment {
            margin-bottom: 10px;
            border: 1px solid #ccc;
            padding: 10px;
            background-color: gray;
        }

        .comment .actions {
            text-align: right;
        }

        .comment .actions button {
            margin-left: 10px;
        }
    </style>
</head>
<body>
<ul>
        <li>
          <a href="main.php" class="contrast" ><strong>home page</strong></a>
        </li>
      </ul>
    <h1>Comments</h1>

    <div class="comment-form">
        <form action="../controller/fact.php" method="post">
            <input type="text" name="country_name" placeholder="country_name">
            <textarea name="fact" placeholder="Write your comment here..." required></textarea>
            <button type="submit" name="create">Submit</button>
        </form>
    </div>
    <?php foreach ($data as $row): ?>
    <ul class="comment-list">
        <li class="comment">
            <p><?= $row['country_name'] ?> , <?= $row['fact'] ?></p>
            <div class="actions">
                <form method="post" action="../controller/fact.php">
                    <input type="hidden" name="id" value="<?=$row['id']?>">
                    <button type="submit" name="delete">delete</button>
                </form>
                <form method="post" action="../controller/fact.php">
                <input type="hidden" name="id" value="<?= $row['id'] ?>">
                <input type="text" name="country_name" value="<?= $row['country_name'] ?>" placeholder="country_name">
                <textarea name="comment" placeholder="Write your comment here..." required><?= $row['fact'] ?></textarea>
                <button type="submit" name="update">Update</button>
                </form>
            </div>
        </li>
        <?php endforeach; ?>
    </ul>
</body>
</html>
