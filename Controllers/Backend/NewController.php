<?php 
	//include model
	include "Models/Backend/NewModel.php";
	class NewController extends Controller{
		//khai bao de su dung class NewModel
		use NewModel;
		//ham tao de xac thuc dang nhap
		public function __construct(){
			$this->authentication();
		}
		public function index(){
			//so ban ghi tren mot trang
			$pageSize = 15;
			//tinh tong so ban ghi
			$totalRecord = $this->totalRecord();//ham trong model
			//tinh so trang
			//ham ceil su dung de lay tran. VD: ceil(2.1)=3
			$numPage = ceil($totalRecord/$pageSize);
			//lay bien p truyen tren url
			$p = isset($_GET["p"])&&is_numeric($_GET["p"])&&$_GET["p"]>0 ? ($_GET["p"]-1) : 0;
			//lay tu ban ghi nao
			$from = $p * $pageSize;
			//lay cac ban ghi
			$data = $this->fetchAll($from,$pageSize);
			//goi view, truyen du lieu ra view
			$this->renderHTML("Views/Backend/NewView.php",array("data"=>$data,"numPage"=>$numPage));
		}
		//edit New
		public function edit(){
			$news_id = isset($_GET["news_id"])&&is_numeric($_GET["news_id"]) ? $_GET["news_id"] : 0;
			//goi ham trong model de lay 1 ban ghi
			$record = $this->fetch($news_id);
			//tao bien $formAction de dieu phoi action cua form
			$formAction = "index.php?area=backend&controller=New&action=doEdit&news_id=$news_id";
			//goi view, truyen du lieu ra view
			$this->renderHTML("Views/Backend/AddEditNewView.php",array("record"=>$record,"formAction"=>$formAction));
		}
		//do edit New
		public function doEdit(){
			$news_id = isset($_GET["news_id"])&&is_numeric($_GET["news_id"]) ? $_GET["news_id"] : 0;
			//goi ham insert trong model de insert ban ghi
			$this->update($news_id);
			//quay tro lai duong dan
			header("location:index.php?area=backend&controller=New");
		}
		//add New
		public function add(){
			//tao bien $formAction de dieu phoi action cua form
			$formAction = "index.php?area=backend&controller=New&action=doAdd";
			//goi view, truyen du lieu ra view
			$this->renderHTML("Views/Backend/AddEditNewView.php",array("formAction"=>$formAction));
		}
		//do add New
		public function doAdd(){
			//goi ham insert trong model de insert ban ghi
			$this->insert();
			//quay tro lai duong dan
			header("location:index.php?area=backend&controller=New");
		}
		//delete New
		public function delete(){
			$news_id = isset($_GET["news_id"])&&is_numeric($_GET["news_id"]) ? $_GET["news_id"] : 0;
			//goi ham delete trong model de delete ban ghi
			$this->deleteNews($news_id);
			//quay tro lai duong dan
			header("location:index.php?area=backend&controller=New");
		}
	}
 ?>