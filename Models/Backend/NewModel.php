<?php
	trait NewModel{
		//lay danh sach cac ban ghi: tu ban ghi nao den ban ghi nao
		public function fetchAll($from, $pageSize){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//thuc thi truy van
			$query = $conn->query("select * from tbl_news order by news_id desc limit $from, $pageSize");
			//lay tat ca ket qua tra ve
			return $query->fetchAll();
		}
		//tinh tong so luong ban ghi
		public function totalRecord(){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//thuc thi truy van
			$query = $conn->query("select news_id from tbl_news");
			//tra ve tong so luong ban ghi
			return $query->rowCount();
		}
		//lay mot ban ghi
		public function fetch($news_id){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//chuan bi truy van
			$query = $conn->prepare("select * from tbl_news where news_id=:news_id");
			//thuc thi truy van
			$query->execute(array("news_id"=>$news_id));
			//tra ve tong so luong ban ghi
			return $query->fetch();
		}
		//update ban ghi
		public function update($news_id){
			$title = $_POST["title"];
			$Mota = $_POST["Mota"];
			$content = $_POST["content"];
			$del_flag = isset($_POST["del_flag"]) ? 1: 0;
			//lay doi tuong ket noi
			$conn = Connection::getInstance();
			//neu user upload anh
			if($_FILES["img"]["tmp_name"] != ""){
				//---
				//lay anh cu de xoa
				$query = $conn->prepare("select image from tbl_news where news_id=:news_id");
				$query->execute(array("news_id"=>$news_id));
				//lay mot ban ghi
				$old_img = $query->fetch();
				if(isset($old_img->image)&&$old_img->image!=""&&file_exists("Assets/upload/Tintuc/".$old_img->image))
					unlink("Assets/upload/Tintuc/".$old_img->image);
				//---
				$img = $_FILES["img"]["name"];
				//upload anh
				move_uploaded_file($_FILES["img"]["tmp_name"], "Assets/upload/TinTuc/$img");
				//update field img
				$query = $conn->prepare("update tbl_news set image=:image,title=:title,Mota=:Mota, content=:content,del_flag=:del_flag where news_id=:news_id");
				$query->execute(array("title"=>$title,"Mota"=>$Mota,"content"=>$content,"del_flag"=>$del_flag,"image"=>$img,"news_id"=>$news_id));
			}
			else {
				//update ban ghi
				$query = $conn->prepare("update tbl_news set title=:title,Mota=:Mota, content=:content,del_flag=:del_flag where news_id=:news_id");
				$query->execute(array("title"=>$title,"Mota"=>$Mota,"content"=>$content,"del_flag"=>$del_flag,"news_id"=>$news_id));

			}
		}		//insert ban ghi
		public function insert(){
			$title = $_POST["title"];
			$Mota = $_POST["Mota"];
			$content = $_POST["content"];
			$createdate = date('y/m/d',time());
			$del_flag = isset($_POST["del_flag"]) ? 1: 0;
			$image = "";
			//neu user upload anh
			if($_FILES["img"]["tmp_name"] != ""){
				$img = $_FILES["img"]["name"];
				//upload anh
				move_uploaded_file($_FILES["img"]["tmp_name"], "Assets/upload/TinTuc/$img");
			}
			//lay doi tuong ket noi
			$conn = Connection::getInstance();
			//update ban ghi
			$query = $conn->prepare("insert into tbl_news set title=:title,Mota=:Mota,content=:content,image=:image,createdate=:createdate,del_flag=:del_flag");
			$query->execute(array("title"=>$title,"Mota"=>$Mota,"content"=>$content,"image"=>$img,"createdate"=>$createdate,"del_flag"=>$del_flag));
		}
		//delete
		public function deleteNews($news_id){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//---
			//lay anh cu de xoa
			$query = $conn->prepare("select image from tbl_news where news_id=:news_id");
			$query->execute(array("news_id"=>$news_id));
			//lay mot ban ghi
			$old_img = $query->fetch();
			if(isset($old_img->image)&&$old_img->image!=""&&file_exists("Assets/upload/Tintuc/".$old_img->image))
				unlink("Assets/upload/Tintuc/".$old_img->image);
			//---
			//chuan bi truy van
			$query = $conn->prepare("delete from tbl_news where news_id=:news_id");
			//thuc thi truy van
			$query->execute(array("news_id"=>$news_id));
		}

	}
 ?>
