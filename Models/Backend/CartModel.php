<?php
trait CartModel{
    //lay danh sach cac ban ghi: tu ban ghi nao den ban ghi nao
    public function listOrder($from, $pageSize){
        //lay bien ket noi csdl
        $conn = Connection::getInstance();
        //thuc thi truy van
        $query = $conn->query("select * from tbl_order inner join tbl_customer on tbl_order.customer_id=tbl_customer.customer_id order by order_id desc limit $from, $pageSize");
        //lay tat ca ket qua tra ve
        return $query->fetchAll();
    }
    //tinh tong so luong ban ghi
    public function totalRecord(){
        //lay bien ket noi csdl
        $conn = Connection::getInstance();
        //thuc thi truy van
        $query = $conn->query("select order_id from tbl_order");
        //tra ve tong so luong ban ghi
        return $query->rowCount();
    }
    public function listProduct($id){
        //lay bien ket noi csdl
        $conn = Connection::getInstance();
        //thuc thi truy van
        $query = $conn->query("select * from tbl_order_detail inner join tbl_product on tbl_order_detail.product_id=tbl_product.id where tbl_order_detail.order_id=$id");
        //tra ve tong so luong ban ghi
        return $query->fetchAll();
    }
    public function sentOrder($id){
        //lay bien ket noi csdl
        $conn = Connection::getInstance();
        //thuc thi truy van
        $query = $conn->query("update tbl_order set status=1 where order_id=$id");
    }
    public function sentOrder2($id){
        //lay bien ket noi csdl
        $conn = Connection::getInstance();
        //thuc thi truy van
        $query = $conn->query("update tbl_order set status=2 where order_id=$id");
    }

    public function ngay(){
        $conn=Connection::getInstance();
        $ngay= date('Y-m-d',time());
        $query = $conn->query("SELECT *,SUM(price) as 'tong' FROM `tbl_order` INNER JOIN `tbl_order_detail` ON `tbl_order_detail`.`order_id`=`tbl_order`.`order_id` WHERE `tbl_order`.`status`= 1  GROUP BY DaY(`tbl_order`.`create_at`) ORDER BY `tbl_order`.`order_id` DESC");
        return $query->fetchAll();
    }
    public function thang(){
        $conn=Connection::getInstance();
        $ngay= date('Y-m-d',time());
        $query = $conn->query("SELECT *,SUM(price) as 'thang',month(create_at) as 'month',year(create_at) as 'year' FROM `tbl_order` INNER JOIN `tbl_order_detail` ON `tbl_order_detail`.`order_id`=`tbl_order`.`order_id`
            WHERE `tbl_order`.`status`= 1
            GROUP BY MONTH(`tbl_order`.`create_at`) ORDER BY `tbl_order`.`order_id` DESC");
        return $query->fetchAll();
    }

    public function nam(){
        $conn=Connection::getInstance();
        $ngay= date('Y-m-d',time());
        $query = $conn->query("SELECT *,SUM(price) as 'nam',month(create_at) as 'month',year(create_at) as 'year' FROM `tbl_order` INNER JOIN `tbl_order_detail` ON `tbl_order_detail`.`order_id`=`tbl_order`.`order_id`
            WHERE `tbl_order`.`status`= 1
            GROUP BY YEAR (`tbl_order`.`create_at`) ORDER BY `tbl_order`.`order_id` DESC");
        return $query->fetchAll();
    }
    public function ngay2(){
        $conn=Connection::getInstance();
        $ngay= date('Y-m-d',time());
        $query = $conn->query("SELECT *,COUNT(`tbl_order`.`status`) as 'sodon' FROM `tbl_order` INNER JOIN `tbl_order_detail` ON `tbl_order_detail`.`order_id`=`tbl_order`.`order_id` WHERE `tbl_order`.`status`= 2  GROUP BY DaY(`tbl_order`.`create_at`) ORDER BY `tbl_order`.`order_id` DESC");
        return $query->fetchAll();
    }
    public function thang2(){
        $conn=Connection::getInstance();
        $ngay= date('Y-m-d',time());
        $query = $conn->query("SELECT *,COUNT(`tbl_order`.`status`) as 'thang',month(create_at) as 'month',year(create_at) as 'year' FROM `tbl_order` INNER JOIN `tbl_order_detail` ON `tbl_order_detail`.`order_id`=`tbl_order`.`order_id`
            WHERE `tbl_order`.`status`= 2
            GROUP BY MONTH(`tbl_order`.`create_at`) ORDER BY `tbl_order`.`order_id` DESC");
        return $query->fetchAll();
    }

    public function nam2(){
        $conn=Connection::getInstance();
        $ngay= date('Y-m-d',time());
        $query = $conn->query("SELECT *,COUNT(`tbl_order`.`status`) as 'nam',month(create_at) as 'month',year(create_at) as 'year' FROM `tbl_order` INNER JOIN `tbl_order_detail` ON `tbl_order_detail`.`order_id`=`tbl_order`.`order_id`
            WHERE `tbl_order`.`status`= 2
            GROUP BY YEAR (`tbl_order`.`create_at`) ORDER BY `tbl_order`.`order_id` DESC");
        return $query->fetchAll();
    }
}
?>
