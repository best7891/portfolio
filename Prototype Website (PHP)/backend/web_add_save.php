<?php 
//web_add_save.php
//ทำหน้าที่บันทึกข้อมูลจากฟอร์ม ลง ตาราง web
?>
<?php
//1. เชื่อมต่อ database:
include('../connect.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้านี้

	//รับค่าไฟล์จากฟอร์ม
$url = $_GET['url'];
$description = $_GET['description'];
$detail1 = $_GET['detail1'];
$detail2 = $_GET['detail2'];
	// เพิ่มเข้าไปในตาราง 
		$sql = "INSERT INTO web
		(id,description,url,detail1,detail2) VALUES
		('','$description','$url','$detail1','$detail2')";
		
		$result = mysqli_query($conn, $sql);
        // or die ("Error in query: $sql " . mysqli_error());
	    mysqli_close($conn);
	
		// javascript แสดงการ upload file
	if($result){
        echo "<script type='text/javascript'>";
        echo "alert('เพิ่มสำเร็จ');";
        echo "window.location = 'web_b.php'; ";
        echo "</script>";
        }else{
        echo "<script type='text/javascript'>";
        echo "alert('Error back to upload again');";
        echo "window.location = 'web_b.php'; ";
        echo "</script>";
    }
?>