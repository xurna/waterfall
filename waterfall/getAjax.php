<?php 
require("./config.php"); 	//连接数据库

$per = 15; 		//每次取15条数据
$num = ($_POST['currentPage']-1)*$per; //num为从第几个开始取数据
$result = mysql_query("select photo from photos limit $num,$per");

//var_dump($result);
$temp = array();
while($row = mysql_fetch_assoc($result)) {
    array_push($temp,$row);  //循环每条数据并保存到数组$temp中
  }
  //var_dump($temp); //$temp为二维数组
  echo json_encode($temp);  //网络传输协议传送
	

 ?>



