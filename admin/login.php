<?php
$_config = require_once('data.php');
error_reporting(0); 
$pass= $_POST;
$sj = $yzm['adminpass'];
//$sj = rand(123,999)
if (empty($_COOKIE["pass"])) {
	setcookie("pass",$sj, time()+86400);
	echo "<script language='JavaScript'> 
function myrefresh() 
{ 
window.location.reload(); 
} 
setTimeout('myrefresh()',10); //指定1秒刷新壹次 
</script>";
}
if($_COOKIE["zt"]!=="ok"){
      if($pass[pass]=="" || $pass[pass]!=$_COOKIE["pass"]) {
echo '
<!DOCTYPE html>
<html lang="zh-cn">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>残月解析-弹幕播放器-管理系统</title>
    <meta name="keywords" content="残月解析-弹幕播放器">
    <meta name="description" content="残月解析-弹幕播放器">
	<link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon">
   <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
   <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css/style.css">
  <!--[if lt IE 9]>
  <![endif]-->
</head>
<body>
<div class="col-xs-12 col-sm-10 col-md-8 col-lg-4 center-block " style="float: none;">
  <br /><br /><br /><br /><br />
    <div class="widget">
<p></p>
    </div>

    <div class="block">
        <div class="block-title">
            <div class="block-options pull-right">
            <a href="javascript:history.back();" class="btn btn-effect-ripple btn-default toggle-bordered enable-tooltip">返回</a>
            </div>
            <h2><b>残月解析-弹幕播放器</b></h2>
        </div>
          <form action="" method="post" role="form">
            <div class="input-group"><div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
              <input type="password" name="pass" class="form-control" required="required" autocomplete="off" placeholder="请输入密码"/>
            </div><br/>
            <div class="form-group">
              <input type="submit" value="登录" class="btn btn-primary btn-block"/>
            </div>
</form>
    </div>
  </div>';
    die();
}else{
	//<br><center><h2>密码: '.$_COOKIE["pass"].'</h2></center>
    setcookie("zt", "ok", time()+86400);
}
}else{
  	
}


?>
