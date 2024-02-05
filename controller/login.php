<?php
session_start();
require_once '../config/Database.php';
require_once '../model/Login.php';

$data = new Database;
$db = $data->connect();
$person = new Login($db);

if (filter_has_var(INPUT_POST, 'submit')) {
    $email = filter_input(INPUT_POST, 'email');
    $password = filter_input(INPUT_POST, 'password');
    
    $person->email = $email;
    $person->password = $password;
    
    if ($person->login()) {
        // Generate a unique session ID
        $_SESSION['user_id'] = uniqid();
        $_SESSION['name'] = $person->fname;
        header('location:../view/main.php');
        exit();
    } else {
        echo "wrong data";
    }
} elseif (filter_has_var(INPUT_POST, 'create')) {
    $person->fname = filter_input(INPUT_POST, 'fname');
    $person->sname = filter_input(INPUT_POST, 'sname');
    $person->email = filter_input(INPUT_POST, 'email');
    $person->password = filter_input(INPUT_POST, 'password');
    
    if ($person->newuser()) {
        // Generate a unique session ID
        $_SESSION['user_id'] = uniqid();
        header('location:../view/main.php');
    } else {
        header('location:../view/signup.php');
    }
} elseif (filter_has_var(INPUT_POST, 'delete')) {
    $person->fname = filter_input(INPUT_POST, 'fname');
    if ($person->delete()) {
        header('location:../view/index.php');
    } else {
        echo "wrong data";
    }
}
?>
