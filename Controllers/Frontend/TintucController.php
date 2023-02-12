<?php
   include "Models/Frontend/TintucModel.php";
   class TintucController extends Controller{
       use TintucModel;
       public function index(){
       	   $data = $this->Tintuc();
           $this->renderHTML("Views/Frontend/TintucView.php",array("data"=>$data));

       }
       
   }
?>