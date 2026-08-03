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
        $sql2="SELECT * FROM book";
        $result2 = mysqli_query($conn,$sql2);
        $countrow = mysqli_num_rows($result2); //นับจำนวนrecord
        mysqli_free_result($result2);

    ?>

    <?php
        //showdata form database
        $sql ="SELECT * FROM book ORDER BY barcode asc ";//สร้างตัวแปรเพื่อเชื่อมตารางฐานข้อมูลโดยใช้ภาษาsql กลุ่ม DML
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