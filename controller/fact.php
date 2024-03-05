<?php 

require_once '../vendor/autoload.php';
use fact\Fact;

$data=new Database;
$db=$data->connect();
$item= new Fact($db);

if (filter_has_var(INPUT_POST,'create')){
    $fact=filter_input(INPUT_POST,'fact');
    $country_name=filter_input(INPUT_POST,'country_name');
        $item->country_name=$country_name;
        $item->fact=$fact;
    if($item->newFact()){
        header('location:../view/fact.php');
        exit();
    }else{
        echo "wrong data";
    }
}
elseif(filter_has_var(INPUT_POST,'update')){
    $item->id=filter_input(INPUT_POST,'id');
    $item->country_name=filter_input(INPUT_POST,'country_name');
    $item->fact=filter_input(INPUT_POST,'fact');
    if($item->update()){
        header('location:../view/fact.php');
    }else{
        echo "sorry something went wrong";
    }
}

elseif(filter_has_var(INPUT_POST,'delete')){
    $item->id=filter_input(INPUT_POST,'id');
    if($item->delete()){
        header('location:../view/fact.php');
    }
    else{
        echo "sorry something went wrong";
    }
}