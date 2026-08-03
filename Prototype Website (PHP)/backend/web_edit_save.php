<?php
//step 1
include('../connect.php');

//step 2 รับค่าพารามิเตอร์ มาเก็บไว้ในตัวแปร
$id=$_GET["id"];
$url=$_GET["url"];
$description=$_GET["description"];
$detail1=$_GET["detail1"];
$detail2=$_GET["detail2"];

//step 2 อัพเดทข้อมูลลงในตาราง web ด้วยภาษา SQL
    $sql="UPDATE web SET
    description='$description',
    url='$url',
    detail1='$detail1',
    detail2='$detail2'
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