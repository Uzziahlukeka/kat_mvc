<?php

namespace fact;
// good for classes 

use PDO;

class Fact{
    private $database;
    private $tablen='country_facts';

    public $country_name;
    public $id;
    public $fact;
    

    public function __construct($db)
    {
      $this->database=$db;
    }

    public function read(){
        $query='SELECT * FROM '.$this->tablen;
        $read=$this->database->prepare($query);
        $read->execute();
        $data=$read->fetchAll(PDO::FETCH_ASSOC);
        
        return $data;
    }

    public function newFact(){
        $post = 'INSERT INTO '.$this->tablen.'(country_name,fact)
             VALUES(
                :country_name,
                 :fact)
             ';
         $add = $this->database->prepare($post);
         $this->country_name = htmlspecialchars($this->country_name);
         $this->fact = htmlspecialchars($this->fact);
         
         $add->bindParam(':fact', $this->fact);
         $add->bindParam(':country_name', $this->country_name);
        
         if ($add->execute()) {
             return true;
         } else {
             echo "Unable to create a new user.";
         }
        }

        public function delete(){
            //create query 
            $query='DELETE FROM '.$this->tablen.'
            WHERE 
            id=:id';
        
            $stmt=$this->database->prepare($query);
            $this->id=htmlspecialchars(strip_tags($this->id));
            $stmt->bindParam(':id',$this->id);
        
            if($stmt->execute()){
                return true;
            }
            else{
                echo'Error : '.$stmt->error;
            }
        
        }

        public function update(){
            //create query
            $query='UPDATE '.$this->tablen.'
            SET
                country_name=:country_name,
                fact=:fact
            WHERE 
            id=:id
            ';
            //prepare statement 
            $stmt=$this->database->prepare($query);
          
            $this->id=htmlspecialchars(strip_tags($this->id));
            $this->country_name=htmlspecialchars(strip_tags($this->country_name));
            $this->fact=htmlspecialchars(strip_tags($this->fact));
            
            $stmt->bindParam(':id',$this->id);
            $stmt->bindParam(':country_name',$this->country_name);
            $stmt->bindParam(':fact',$this->fact);
            
            if($stmt->execute()){
                return true;
            }
            else{
                echo'Error : '.$stmt->error;
            }
        }

}