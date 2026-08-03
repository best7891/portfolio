<?php
//connect.php ทำหน้าที่ เชื่อมserver เชื่อมฐานข้อมูล
$server="localhost"; //or 127.0.0.1
$username="root";
$password="";
$dbname="db_php6606105354";
?>

<?php
// สร้างเส้นการเชื่อมต่อ
$conn = new mysqli($server,$username,$password,$dbname);
mysqli_query($conn,"SET NAMES 'utf8' ");//fix
//check connection

if($conn->connect_error){
    die("Conection Failed:".$conn->connect_error);
}//echo "Connected สำเร็จแล้ววเย้";



date_default_timezone_set('Asia/Bangkok');
?>