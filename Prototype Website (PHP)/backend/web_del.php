<?php
//1. เชื่อมต่อ database: 
include('../connect.php');
//สร้างตัวแปรสำหรับรับค่า Product_id จากไฟล์แสดงข้อมูล
$id = $_REQUEST["ID"];

//ลบข้อมูลออกจาก database ตาม p_id ที่ส่งมา

$sql = "DELETE FROM web WHERE id='$id' ";
$result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_error($conn,$sql));

//จาวาสคริปแสดงข้อความเมื่อบันทึกเสร็จและกระโดดกลับไปหน้าฟอร์ม
	if($result){
	echo "<script type='text/javascript'>";
	echo "alert('Delete Succesfuly');";
	echo "window.location = 'web_list.php'; ";
	echo "</script>";
	}
	else{
	echo "<script type='text/javascript'>";
	echo "alert('Error back to delete again');";
	echo "</script>";
}
?>