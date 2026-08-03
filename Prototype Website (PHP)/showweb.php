<?php
//----step 1 เชื่อม Server
include('connect.php');
?>
<?php
//--step 2 เชื่อมตารางเพื่อแบ่งหน้า
 $sql2="SELECT * FROM web";
 $result2 = mysqli_query($conn,$sql2);
 $countrow = mysqli_num_rows($result2); //นับจำนวนrecord
 mysqli_free_result($result2);
?>
 <?php
// --- step 3 ---สูตรการแบ่งหน้า
        @$pp=$_GET['pp'];//ส่งเลขหน้า
        $tp=10; //จำนวนบรรทัดต่อ1หน้า
        if($pp==""){
           $sp=0;
        }elseif($pp==$countrow){
            $sp=$pp-$tp;
        }else{
            $sp=$pp;
        }
?>
<?php
        //---step 4---showdata 
        $sql ="SELECT * FROM web ORDER BY id asc LIMIT $sp,$tp";//สร้างตัวแปรเพื่อเชื่อมตารางฐานข้อมูลโดยใช้ภาษาsql กลุ่ม DML
        $rs=mysqli_query($conn,$sql);//runภาษา Sql
        if(mysqli_num_rows($rs)>0){ //show data 
            $r=1;
        while($row=mysqli_fetch_assoc($rs)){
            echo "<h4>ลำดับ:".$row["id"]."</h4>";

            echo "<p>ชื่อเว็บ:".$row["url"]."</p>";//ลิงค์ไม่ได้
            echo "<p>ชื่อเว็บ:<a href='$row[url]'>".$row["url"]."</a></p>";//ลิงค์ได้

            echo "<p>หน่วยงาน:".$row["description"]."</p>";
            echo "<hr>";
         }//end loop while
        }//end-if
        ?>

<?php
//สร้างปุ่มกด เลือกเลขหน้า [1][2][3]
$tpage=ceil($countrow/$tp); //1382/10
echo "จำนวนหน้า:".$tpage."<hr>";
for($i=1;$i<=$tpage;$i++){
    $v=($i-1)*$tp;
    echo "<a href='web.php?pp=$v'>[$i]</a>";
}
?>