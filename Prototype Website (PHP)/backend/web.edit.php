<?php ?>

<?php
include('../connect.php');
$id=$_GET["ID"];
$query = "SELECT * FROM web WHERE id='$id'";
$row=mysqli_query($conn,$query);
$row2=mysqli_fetch_array($row);

echo $row2[2];
?>
<?php // form รับข้อมูลเว็บใหม่ web_add.php ?>
<div class="container mt-2">
    <h2 class="mb-4">ฟอร์มแก้ไขเพิ่มข้อมูลเว็บไซต์</h4>
    <form action="web_add_save.php" method="GET">
      <div class="mb-3">
        <label for="url" class="form-label" >URL</label>
        <input type="text" class="form-control" id="url" name="url" 
        placeholder="<?php echo $row2['url'];?>" required>
      </div>

      <div class="mb-3">
        <label for="description" class="form-label">Description</label>
        <input type="text" class="form-control" id="description" name="description"
        placeholder="<?php echo $row2['description'];?>" required>
      </div>

      <div class="mb-3">
        <label for="detail1" class="form-label" >Detail 1</label>
        <input type="text" class="form-control" id="detail1" name="detail1" 
        placeholder="<?php echo $row2['detail1'];?>" required>
      </div>
      <div class="mb-3">
        <label for="detail2" class="form-label">Detail 2</label>
        <input type="text" class="form-control" id="detail2" name="detail2" placeholder="Enter Detail 2" required>
        placeholder="<?php echo $row2['detail1'];?>" required>
      </div>
      <input type="hidden" name= "id" value="<?php echo $id; ?>
      <button type="submit" class="btn btn-primary">บันทึกการแก้ไข</button>
    </form>
  </div>

