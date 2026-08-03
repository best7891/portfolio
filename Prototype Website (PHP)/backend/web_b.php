<?php // File web_b.php ?>
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
                        <?php
                          $act = @$_GET['act'];
                          if($act == 'add'){
                            include('web_add.php');
                          }elseif ($act == 'edit') {
                            include('web_edit.php');
                          }else{
                            include('web_list.php');
                           }
                         ?>
                    </div>
            </div>
        </div>
    </div>
    <https://teams.microsoft.com/l/message/19:rq0Y1KKluoSSy9Q10P5nwZzziJgWNdzgRw1eG6vrmfM1@thread.tacv2/1727082961291?tenantId=8ec74a39-ddf6-41e1-b0a2-ff0459ea8eb8&amp;groupId=3094330a-b16e-4fad-92d2-1c3281a7a5cb&amp;parentMessageId=1727082961291&amp;teamName=(1/67) 10204213:PHP SEC 2&amp;channelName=General&amp;createdTime=1727082961291&amp;allowXTenantAccess=false>
    <?php include('footer_b.php');?>
</body>
</html>
