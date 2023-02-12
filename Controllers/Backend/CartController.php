<?php
include "Models/Backend/CartModel.php";
class CartController extends Controller{
    use CartModel;
    //ham tao de xac thuc dang nhap
    public function __construct(){
        $this->authentication();
    }
    public function order(){
        //so ban ghi tren mot trang
        $pageSize = 4;
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
        $data = $this->listOrder($from,$pageSize);
        //goi view, truyen du lieu ra view
        $this->renderHTML("Views/Backend/OrderView.php",array("data"=>$data,"numPage"=>$numPage));
    }
    //chi tiet don hang
    public function orderDetail(){
        $id = isset($_GET["id"])&&is_numeric($_GET["id"])?$_GET["id"]:0;
        $data = $this->listProduct($id);
        //goi view, truyen du lieu ra view
        $this->renderHTML("Views/Backend/OrderDetailView.php",array("data"=>$data,"id"=>$id));
    }
    //xac nhan giao hang
    public function sent(){
        $id = isset($_GET["id"])&&is_numeric($_GET["id"])?$_GET["id"]:0;
        $this->sentOrder($id);
        header("location:index.php?area=backend&controller=Cart&action=order");
    }
public function sent2(){
        $id = isset($_GET["id"])&&is_numeric($_GET["id"])?$_GET["id"]:0;
        $this->sentOrder2($id);
        header("location:index.php?area=backend&controller=Cart&action=order");
    }
    public function thongke(){
        $ngay=$this->ngay();
        $thang=$this->thang();
        $nam=$this->nam();
        $this->renderHTML("Views/Backend/thongke.php",array("ngay"=>$ngay,"thang"=>$thang,"nam"=>$nam));
    }
    public function thongkehuy(){
        $ngay=$this->ngay2();
        $thang=$this->thang2();
        $nam=$this->nam2();
        $this->renderHTML("Views/Backend/thongkehuy.php",array("ngay"=>$ngay,"thang"=>$thang,"nam"=>$nam));
    }
}
?>
