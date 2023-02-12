<?php
  trait TintucModel{
      //tintuc
      public function Tintuc(){
          $conn = Connection::getInstance();
          $query = $conn->query("select * from tbl_news where del_flag=1 order by news_id desc limit 0,7");
          return $query->fetchAll();
      }
       public function fetchOne($news_id){
          $conn = Connection::getInstance();
          $query = $conn->prepare("select * from tbl_news where news_id=:news_id");
          $query->execute(array("news_id"=>$news_id));
          //tra ve mot ban ghi
          return $query->fetch();
      }
      //lay danh sach cac ban ghi: tu ban ghi nao den ban ghi nao
      
      //tinh tong so luong ban ghi
      public function totalRecord(){
          $news_id = isset($_GET["news_id"])&&is_numeric($_GET["news_id"])?$_GET["news_id"]:0;
          //lay bien ket noi csdl
          $conn = Connection::getInstance();
          //thuc thi truy van
          $query = $conn->query("select news_id from tbl_news where news_id=$news_id");
          //tra ve tong so luong ban ghi
          return $query->rowCount();
      }
  }
?>