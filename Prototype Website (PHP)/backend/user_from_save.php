<?php
include('../connect.php');  
$query = "SELECT * FROM login ORDER BY id DESC" or die("Error:" . mysqli_error($conn));
//เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($conn, $query);
?>

<table class="table table-hover">
    <thead class="table-success">
        <tr class='info'>
            <th> id </th>
            <th>level </th>
            <th> name </th>
            <th>username</th>
    <th> password</th>
        </tr>
    </thead>

  <?php
  while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
    echo "<td>" .$row["id"] .  "</td> ";
    echo "<td>" .$row["level"] .  "</td> ";
    echo "<td>" .$row["name" ].  "</td> ";
    echo "<td>" .$row["username"] .  "</td> ";
    echo "<td>" .$row["password"] .  "</td> ";

    //แก้ไขข้อมูล
    echo "<td><a href='user_all.php?act=edit&ID=$row[0]' 
    class='btn btn-warning btn-xs'>edit</a></td> ";
    
    //ลบข้อมูล
    echo "<td><a href='user_from.php?ID=$row[0]' 
    onclick=\"return confirm('ลบจริงหรือไม่!!')\"
    class='btn btn-danger btn-xs'>del</a></td> ";
  echo "</tr>";
  }
echo "</table>";
//5. close connection
mysqli_close($conn);
?>