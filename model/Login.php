<?php

namespace user; 

use PDO;

class Login{
    private $database;
    private $tablen='login';

    public $fname;
    public $sname;
    public $email;
    public $password;

    public function __construct($db)
    {
      $this->database=$db;  
    }

    public function newuser(){
        $post = 'INSERT INTO '.$this->tablen.'
             SET
                 fname = :fname,
                 sname = :sname,
                 email = :email,
                 password = :password
             ';
         $add = $this->database->prepare($post);
         $this->fname = htmlspecialchars($this->fname);
         $this->sname = htmlspecialchars($this->sname);
         $this->email = htmlspecialchars($this->email);
         $this->password = htmlspecialchars($this->password);
         if (strlen($this->password) >= 8) {
            //echo "Please enter a password with at least 8 characters.";
            //return false;
        
         $hashed = password_hash($this->password, PASSWORD_DEFAULT);
     
         $add->bindParam(':fname', $this->fname);
         $add->bindParam(':sname', $this->sname);
         $add->bindParam(':email', $this->email);
         $add->bindParam(':password', $hashed);
     
         if ($add->execute()) {
             return true;
         } else {
             echo "Unable to create a new user.";
         }
        }else{
            echo "please long password";
            return false;
        }
     }

public function login(){

    $pv = 'SELECT password, fname FROM '.$this->tablen.' WHERE email = :email';
    $stmt = $this->database->prepare($pv);
    $this->email = htmlspecialchars($this->email);
    $stmt->bindParam(':email', $this->email);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    
        if ($result !== false) {
            $storedPassword = $result['password'];
            $verif = password_verify($this->password, $storedPassword);
    
            if ($verif === true) {
                $this->fname=$result['name'];
                return true;
            } else {
                echo "Something went wrong";
            }
        }
}

public function delete(){
    //create query 
    $query='DELETE FROM '.$this->tablen.'
    WHERE 
    fname=:name';

    $stmt=$this->database->prepare($query);
    $this->fname=htmlspecialchars(strip_tags($this->fname));
    $stmt->bindParam(':name',$this->fname);

    if($stmt->execute()){
        return true;
    }
    else{
        echo'Error : '.$stmt->error;
    }

}


}