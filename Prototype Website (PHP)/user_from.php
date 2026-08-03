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
    