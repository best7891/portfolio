<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<?php
include('../connect.php');  
$query = "SELECT * FROM web ORDER BY id DESC" or die("Error:" . mysqli_error($conn));
//เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($conn, $query);
?>

<table class="table table-hover">
    <thead class="table-success">
        <tr class='info'>
            <th> id </th>
            <th> Description </th>
            <th> URL </th>
            <th>แก้ไข</th>
            <th>ลบ</th>
        </tr>
    </thead>

  <?php
  while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
    echo "<td>" .$row["id"] .  "</td> ";
    echo "<td>" .$row["description"] .  "</td> ";
    echo "<td>" .$row["url"] .  "</td> ";
    //แก้ไขข้อมูล
    echo "<td><a href='bf_web.php?act=edit&ID=$row[0]' 
    class='btn btn-warning btn-xs'>edit</a></td> ";
    
    //ลบข้อมูล
    echo "<td><a href='web_del.php?ID=$row[0]' 
    onclick=\"return confirm('Do you want to delete this record? !!!')\"
    class='btn btn-danger btn-xs'>del</a></td> ";
  echo "</tr>";
  }
echo "</table>";
//5. close connection
mysqli_close($conn);
?>