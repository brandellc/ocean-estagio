<?php
    class Connection{
        private $user = 'root';
        private $passwd = 'root123';
        private $server = 'localhost';
        private $dbase = 'comicsnews';

        private $connection = null;
       
        public function  __construct(){
            
        }

        public function &getConnection(){
            if ($this->connection == null){
                $this->connection = new mysqli($this->server, $this->user, $this->passwd, $this->dbase);
            
            }
            
            return $this->connection;

        }
        
    }

          
?>
