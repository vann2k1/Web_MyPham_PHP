<?php
include "Models/Frontend/TintucModel.php";
class TintucDetailController extends Controller{
    use TintucModel;
    public function index(){
        $news_id = isset($_GET["news_id"])&&is_numeric($_GET["news_id"])?$_GET["news_id"]:0;
        //lay du lieu tu model
        $record = $this->fetchOne($news_id);
        $this->renderHTML("Views/Frontend/TintucDetail.php",array("record"=>$record));
    }
}
?>