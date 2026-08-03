<?php // File user_form.php ?>
<?php include('config_ses.php');?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <?php include('boot_b.php');?>
</head>
<body>
    <?php include('head_b.php');?>
    <?php include('menu_b.php');?>
    
    
    <div class="container-fluid">
        <div class="row">
          <div class="col-2 bg-light text-dark p-3">
            <?php include("submenu.php");?>    
          </div>
          <div class="col-10 bg-light text-dark p-3">          
                <div>
                    <h3>ฟอร์มรับข้อมูลผู้ใช้ใหม่</h3>
                        <form action="user_save.php" method="GET">
                            <div class="mb-3">
                                <label for="level" class="form-label">Level</label>
                                    <select class="form-select" id="level" name="level" required>
                                        <option value="admin">Admin</option>
                                        <option value="user">User</option>
                                    </select>
                            </div>
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" name="name" required>
                                
                            </div>
                            <div class="mb-3">
                                <label for="username" class="form-label">Username</label>
                                <input type="text" class="form-control" id="username" name="username" required>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                                <button type="submit" class="btn btn-primary">บันทึกข้อมูล</button>
                        </form>

                </div>
            </div>
        </div>
    </div>
    <https://teams.microsoft.com/l/message/19:rq0Y1KKluoSSy9Q10P5nwZzziJgWNdzgRw1eG6vrmfM1@thread.tacv2/1727082961291?tenantId=8ec74a39-ddf6-41e1-b0a2-ff0459ea8eb8&amp;groupId=3094330a-b16e-4fad-92d2-1c3281a7a5cb&amp;parentMessageId=1727082961291&amp;teamName=(1/67) 10204213:PHP SEC 2&amp;channelName=General&amp;createdTime=1727082961291&amp;allowXTenantAccess=false>
    <?php include('footer_b.php');?>
</body>
</html>
<?php
//step 1 ---- connect server
include('../connect.php');
$id=$_GET["ID"];

//step 2 ---- ดึงข้อมูลที่ต้องการแก้ไขขึ้นมาแสดง
$query = "SELECT * login WHERE id='$id'";
$row=mysqli_query($conn,$query);
$row2=mysqli_fetch_array($row);
//echo $row2["url"];
//echo $row2["description"];
?>

<div class="container mt-2">
    <h2 class="mb-4">ฟอร์มแก้ไขข้อมูลเว็บไซต์</h2>
    <form action="web_edit_save.php" method="GET">
        <div class="mb-3">
            <label for="url" class="form-label">URL</label>
            <input type="text" class="form-control" id="url" name="url"
            value="<?php echo $row2['url'];?>" required>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Desciption</label>
            <input type="text" class="form-control" id="description" name="description"
            value="<?php echo $row2['description'];?>" required>
        </div>

        <div class="mb-3">
            <label for="detail1" class="form-label">Detail 1</label>
            <input type="text" class="form-control" id="detail1" name="detail1"
            value="<?php echo $row2['detail1'];?>" required>
        </div>

        <div class="mb-3">
            <label for="detail2" class="form-label">Detail 2</label>
            <input type="text" class="form-control" id="detail2" name="detail2"
            value="<?php echo $row2['detail2'];?>" required>
        </div>

        <input type="hidden" name="id" value="<?php echo $id; ?>"/>
        <button type="submit" class="btn btn-primary">บันทึกการแก้ไข</button>
    </form>
</div>