<?php
   include "Models/Frontend/LienheModel.php";
   class LienheController extends Controller{
       use LienheModel;
       public function index(){
       	   $data = $this->Lienhe();
           $this->renderHTML("Views/Frontend/Lienhe.php",array("data"=>$data));

       }
       
   }
?>