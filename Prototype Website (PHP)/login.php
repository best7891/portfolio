<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <?php include('boot.php');//เชื่อมไฟล์?>
</head>
<body>
    <?php include('head.php');?>
    <?php include('menu_f.php');?>
    
    <center>
    <div class="w-25 p-4">
        <h2>สำหรับผู้ดูแลระบบ</h2>
        <form action="chklog.php" method="POST">
            <div class="mb-3 mt-3">
                <label for="username">Username:</label>
                <input type="text" name="username" placeholder="ชื่อผู้ใช้">
            </div>

            <div class="mb-3 mt-3">
                <label for="password">Password:</label>
                <input type="password" name="password" placeholder="รหัสผ่าน">
            </div>

            <button type="submit" class="btn btn-info">เข้าระบบ</button>
        </form>
    </div>
    </center>

    <?php include('footer.php');?>
</body>
</html>