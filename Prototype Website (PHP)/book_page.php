<?php
//book.php ทำหน้าแสดงข้อมูลจากตาราง book 
include('connect.php');
?>
<table class="table table-hover">
    <thead>
      <tr>
        <th>No.</th>
        <th>Barcode</th>
        <th>Title</th>
        <th>Author</th>
        <th>Price</th>
        <th>ประเภท</th>
        <th>ปีที่พิมพ์</th>
      </tr>
    </thead>
    <tbody>
    <?php
    //เชื่อมตารางเพื่อแบ่งหน้า
        $sql2="SELECT * FROM book"; //ภาษา sql
        $result2 = mysqli_query($conn,$sql2);

        $countrow = mysqli_num_rows($result2); //นับจำนวนrecord
        mysqli_free_result($result2);
        //echo $countrow;
    ?>
    
    <?php
        //สูตรการแบ่งหน้า
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
        //showdata form database
        $sql ="SELECT * FROM book ORDER BY barcode asc LIMIT $sp,$tp";//สร้างตัวแปรเพื่อเชื่อมตารางฐานข้อมูลโดยใช้ภาษาsql กลุ่ม DML
        $rs=mysqli_query($conn,$sql);//runภาษา Sql
        if(mysqli_num_rows($rs)>0){ //show data 
            $r=1;
        while($row=mysqli_fetch_assoc($rs)){
            echo "<tr>"; 
            echo "<td>".$r++."</td>";
            echo "<td>".$row["barcode"]."</td>";
            echo "<td>".$row["title"]."</td>"; 
            echo "<td>".$row["author"]."</td>"; 
            echo "<td>".$row["price"]."</td>"; 
            echo "<td>".$row["type"]."</td>"; 
            echo "<td>".$row["year"]."</td>"; 
            echo "</tr>";
         }
        }
        ?>
    </tbody>
</table>

<?php
//สร้างปุ่มกด เลือกเลขหน้า [1][2][3]
$tpage=ceil($countrow/$tp); //1382/10
echo "จำนวนหน้า:".$tpage."<hr>";
//echo "[1][2][3]";
for($i=1;$i<=$tpage;$i++){
    $v=($i-1)*$tp;
    echo "<a href='showbook2.php?pp=$v'>[$i]</a>";
}
?>
