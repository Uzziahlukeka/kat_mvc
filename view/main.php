<?php
session_start();
// Include necessary files
require_once '../config/Database.php';
require_once '../model/Data.php';
require_once '../model/Login.php';

// Create database connection
$database = new Database;
$db = $database->connect();

// Initialize objects
$cnt = new Data($db);
$data = $cnt->read();
$person = new Login($db);

// Set session variable
$_SESSION['name'] = $person->fname;
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Country Data</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap">
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            flex-direction: column;
            background-color: whitesmoke;
        }

        h1 {
            color: #191919;
            margin-bottom: 20px;
        }

        .container {
            max-width: 800px;
            width: 100%;
            padding: 20px;
            background-color: #bbb;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
            margin-top: 20px;
        }

        th,
        td {
            padding: 12px;
            align-items: center;
            justify-content: center;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
            vertical-align: middle;
        }

        th {
            background-color: #4CAF50;
            color: #fff;
            text-transform: uppercase;
        }

        .table-countries {
            color: #191919;
        }

        h6 {
            color: #191919;
            vertical-align: middle;
        }

        tr:hover {
            background-color: #f2f2f2;
        }

        @media screen and (max-width: 600px) {
            table {
                overflow-x: auto;
            }
        }

        .container {
            position: relative;
            width: fit-content;

        }

        .navbar {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            position: absolute;
            left: 0;
            pad: 20px;
            margin: 0 20px 0 20px;
            align-items: center;
            width: 95%;
        }

        .navbar ul {
            display: flex;
            justify-content: space-between;
            width: fit-content;
        }

        .table-data {
            margin-top: 100px;
        }
    </style>
</head>

<body>
    <div class="container">
        <nav class="navbar">
            <a href="fact.php" class="contrast"><strong>Facts page</strong></a>
            <div>
                <details role="list" dir="rtl">
                    <summary>Delete Profile</summary>
                    <form method="post" action="../controller/login.php">
                        <input type="hidden" name="username" value="<?= $_SESSION['name'] ?>">
                        <button type="submit" name="delete">Delete Profile</button>
                    </form>
                </details>
            </div>
        </nav>
        <div class="table-data">
            <h1>WELCOME TO YOUR REMINDER!</h1>
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
                    <?php foreach ($data as $row) : ?>
                        <tr class="table-countries">
                            <td>
                                <h6><?= $row['country_name'] ?></h6>
                            </td>
                            <td>
                                <h6><?= $row['capital'] ?></h6>
                            </td>
                            <td>
                                <h6><?= $row['currency'] ?></h6>
                            </td>
                            <td>
                                <h6><?= $row['population'] ?></h6>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>