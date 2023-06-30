<?php
class Data{
    private $database;
    private $tablen='countries';

    public $country_name;
    public $capital;
    public $currency;
    public $population;
    public $data;

    public function __construct($db)
    {
      $this->database=$db;  
    }

    public function read(){
        $query='SELECT country_name,capital,currency,population FROM '.$this->tablen;
        $read=$this->database->prepare($query);
        $read->execute();
        $data=$read->fetchAll(PDO::FETCH_ASSOC);
        
        return $data;
    }



}