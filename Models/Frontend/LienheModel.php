<?php
  trait LienheModel{
      //tintuc
      public function Lienhe(){
          $conn = Connection::getInstance();
          $query = $conn->query("select * from tbl_contact  order by contact_id desc limit 0,7");
          return $query->fetchAll();
      }
      
  }
?>