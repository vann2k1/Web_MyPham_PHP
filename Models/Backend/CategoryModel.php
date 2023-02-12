<?php 
	trait CategoryModel{
		//lay danh sach cac ban ghi: tu ban ghi nao den ban ghi nao
		public function fetchAll($from, $pageSize){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//thuc thi truy van
			$query = $conn->query("select * from tbl_category order by id desc limit $from, $pageSize");
			//lay tat ca ket qua tra ve
			return $query->fetchAll();
		}
		//tinh tong so luong ban ghi
		public function totalRecord(){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//thuc thi truy van
			$query = $conn->query("select id from tbl_category");
			//tra ve tong so luong ban ghi
			return $query->rowCount();
		}
		//lay mot ban ghi
		public function fetch($id){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//chuan bi truy van
			$query = $conn->prepare("select * from tbl_category where id=:id");
			//thuc thi truy van
			$query->execute(array("id"=>$id));
			//tra ve tong so luong ban ghi
			return $query->fetch();
		}
		//update ban ghi
		//update ban ghi
    public function update($id){
        $name = $_POST["name"];
        //update ban ghi
        //lay bien ket noi csdl
        $conn = Connection::getInstance();
        //chuan bi truy van
        $query = $conn->prepare("update tbl_category set name=:name where id=:id");
        //thuc thi truy van
        $query->execute(array("id"=>$id,"name"=>$name));
    }
    //insert ban ghi
    public function insert(){
        $name = $_POST["name"];
        //update ban ghi
        //lay bien ket noi csdl
        $conn = Connection::getInstance();
        //chuan bi truy van
        $query = $conn->prepare("insert into tbl_category set name=:name");
        //thuc thi truy van
        $query->execute(array("name"=>$name));
    }
    //delete
    public function deleteCategory($id){
        //lay bien ket noi csdl
        $conn = Connection::getInstance();
        //chuan bi truy van
        $query = $conn->prepare("delete from tbl_category where id=:id");
        //thuc thi truy van
        $query->execute(array("id"=>$id));
    }

			
	}
 ?>