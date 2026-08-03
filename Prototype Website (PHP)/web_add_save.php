<meta charset="UTF-8">

<?php
//1. เชื่อมต่อ database:
include('../condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี


	//รับค่าไฟล์จากฟอร์ม
$url = $_GET['url'];
$description = $_GET['description'];
$detail1 = $_GET['detail1'];
$detail2 = $_GET['detail2'];

	// เพิ่มเข้าไปในตาราง 
		$sql = "INSERT INTO web
		(id,description,url,detail1,detail2) VALUES
		('','$url','$description','$detail1','$detail2')";
		
		$result = mysqli_query($conn, $sql);// or die ("Error in query: $sql " . mysqli_error());
	
	mysqli_close($conn);
	
	
	// javascript แสดงการ upload file
	if($result){
        echo "<script type='text/javascript'>";
        echo "alert('Add Succesfuly');";
        echo "window.location = 'bf_web.php'; ";
        echo "</script>";
        }else{
        echo "<script type='text/javascript'>";
        echo "alert('Error back to upload again');";
        echo "window.location = 'bf_web.php'; ";
        echo "</script>";
    }
?>