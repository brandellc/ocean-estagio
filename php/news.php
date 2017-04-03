<?php
    class News{
        private $id;
        private $title;
        private $date;
        private $img;
        private $author;
        private $description;

        public function __construct(){
        
        }

        public function toJSON(){

            echo json_encode($this->toArray());

        }

        public function toArray(){
            $arr = array( 'id' => "$this->id",
                'title' => "$this->title",
                'description' => "$this->description",
                'date' => "$this->date",
                'img' => "$this->img",
                 'author' => "$this->author" );
            return $arr;
        }

        public function fromJSON($jsonData){
            $arr = json_decode($jsonData);
            $this->id = $arr['id'];
            $this->title = $arr['title'];
            $this->description = $arr['description'];
            $this->img = $arr['img'];
            $this->author = $arr['author'];
       
        }

        public function fromArray($arr){
            $this->id = $arr['ID'];
            $this->title = $arr['titulo'];
            $this->description = $arr['descricao'];
            $this->img = $arr['img'];
            $this->author = $arr['autor'];
            $this->date = $arr['data'];
        }
        public function &__get($property){
            if(property_exists($this, $property)){
                return $this->$property;
            }
        }
        
        public function &__set($property, $value){
            if(property_exists($this, $property)){
                $this->$property = $value;
            }

            return $this;
        }
    }
?>
