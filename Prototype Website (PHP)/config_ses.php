<?php session_start()?>
<?php //ทำหน้าที่ตรวจสอบมีการlogin หรือไม่ และ ได้สิทธิ admin หรือไม่
    $id=$_SESSION['id'];
    $name=$_SESSION['name'];
    $level=$_SESSION['level'];
    if($level!='admin'){
        Header("Location:../logout.php");
    }
?>