<?php
//step 1
include('../connect.php');

//step 2 รับค่าพารามิเตอร์ มาเก็บไว้ในตัวแปร
$id=$_GET["id"];
$level=$_GET["level"];
$name=$_GET["name"];
$usename=$_GET["username"];
$password=$_GET["password"];

//step 2 อัพเดทข้อมูลลงในตาราง web ด้วยภาษา SQL
    $sql="UPDATE login SET
    id='$id',
  level='$level',
    username='$username',
    password='$password'
    WHERE id='$id' ";

    $result = mysqli_query($conn, $sql);
    // javascript แสดงการ upload file
    if($result){
       echo "<script type='text/javascript'>";
       echo "alert('แก้ไขสำเร็จ');";
       echo "window.location = ''; ";
       echo "</script>";
    }else{
       echo "<script type='text/javascript'>";
       echo "alert('Error back to upload again');";
       echo "window.location = 'web_b.php'; ";
       echo "</script>";
}    
?>