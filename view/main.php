<?php
session_start();
require_once '../config/Database.php';
require_once '../model/Data.php';
require_once '../model/Login.php';
$database=new Database;
$db=$database->connect();
$cnt=new Data($db);
$data=$cnt->read();
$person=new Login($db);

$_SESSION['name']=$person->fname;
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Country data</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css" />
    <style>
        /* Fonts */
        @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap');

        /* General Styles */
        body {
            font-family: 'Open Sans', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            flex-direction: column;
        }

        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: gray;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
        }

        th {
            background-color: yellowgreen;
            font-weight: 700;
            text-transform: uppercase;
        }

        tr:hover {
            background-color: black;
        }

        /* Responsive Styles */
        @media screen and (max-width: 600px) {
            table {
                overflow-x: auto;
                display: block;
            }

            th, td {
                white-space: nowrap;
            }
        }
    </style>
</head>
<body>
<nav class="container-fluid">
      <ul>
        <li>
          <a href="fact.php" class="contrast" ><strong>Facts page</strong></a>
        </li>
      </ul>
      <ul>
        <li>
          <details role="list" dir="rtl">
          <form method="post" action="../controller/login.php">
                    <input type="hidden"  value="<?=$person->fname?>">
                    <button type="submit" name="delete">delete profil</button>
                </form>
          </details>
        </li>
      </ul>
    </nav>
    <h1>WELCOME TO YOUR REMINDER !</h1>
    <table>
        <thead>
            <tr>
                <th>Country</th>
                <th>Capital</th>
                <th>Currency</th>
                <th>Population</th>
            </tr>
        </thead>
   <tbody>
    <?php foreach ($data as $row): ?>
                <tr>
                    <td><?= $row['country_name'] ?></td>
                    <td><?= $row['capital'] ?></td>
                    <td><?= $row['currency'] ?></td>
                    <td><?= $row['population'] ?></td>
                </tr>
            <?php endforeach; ?>
   </tbody>
    </table>
</body>
</html>

