<?php
    include('news.php');
    include('connection.php');


    class NewsDAO{
        private $connection;
        
        public function __construct(){
            $this->connection = new Connection();
        }

        public function createNews($news){
            $query =  "insert into noticia(titulo, descricao, img, data, autor) values(?,?,?,?,?)"; 
 
            $connection = $this->connection->getConnection();
            $statement = $connection->prepare($query);
            echo $connection->error;

            $statement->bind_param("sssss", $news->title, $news->description, 
            $news->img, $news->date, $news->author);
            $statement->execute();
            
            if ($this->connection->getConnection()->affected_rows == 1){
                echo "1";
            }
            else
                echo "0";

        }

        public function getNewFromId($id){
            $query = "select * from noticia where ID = ?;";
            $connection = $this->connection->getConnection();
            $statement = $connection->prepare($query);

            $statement->bind_param('i', $id);
            $statement->execute();
            $result = $statement->get_result();
            $newsArr = $result->fetch_assoc();
            $news = new News();
            $news->fromArray($newsArr);
            $news->toJSON();
        }

        public function getHotNews(){
            $query = "select * from noticia order by data DESC limit 0,20;";
            $connection = $this->connection->getConnection();
            $result = $connection->query($query);
            $toArr = array();
            $news = new News();
            while ($row = $result->fetch_assoc()){
                    $news->fromArray($row);
                    $toArr [] = $news->toArray(); 
            }

            echo json_encode($toArr);
        }
    }
?>
