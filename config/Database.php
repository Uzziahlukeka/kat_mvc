<?php
class Database{
    private $host='localhost';
    private $db_name='katkat';
    private $username='katkat';
    private $password='Yum4Hp3xOhteGesG';
    private $con;


//DB connect 
public function connect(){
    $this->con=null;

        try{
            $this->con=new PDO('mysql:host='.$this->host.';dbname='.$this->db_name.'',$this->username,$this->password); 
            $this->con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

        } catch(PDOException $e){
            echo'connection error : '.$e->getMessage();
        }
        
        return $this->con;
    }
}