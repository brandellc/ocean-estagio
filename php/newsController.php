<?php
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);
    
    include('newsDAO.php');
    $_POST = json_decode(file_get_contents('php://input'), true);
    if(isset($_POST['type'])){
        
        switch($_POST['type']){
            case 1:
                //create news
                $news = new News();
                $news->title = $_POST['title'];
                $news->description = $_POST['description'];
                $news->img = $_POST['img'];
                $news->date = $_POST['date'];
                $news->author = $_POST['author']; 
    
                $dao = new NewsDAO();
                $dao->createNews($news);
                break;

            case 2:
                $dao = new NewsDAO();
                $dao->getNewFromId($_POST['id']); 
                //getting a specific news
                break;
            case 3:
                //getting top news
                $dao = new NewsDAO();
                $dao->getHotNews();
                break;
            case 4:
                //getting new by name
                break;
        }         
    }
    
    if(isset($_GET['list'])){
        if ($_GET['list'] == 'top'){
                $dao = new NewsDAO();
                $dao->getHotNews();
        }
    }
    /*    */
?>
