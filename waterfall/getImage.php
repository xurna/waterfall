<?php 
	require('./config.php');
	$result = mysql_query("select photo from photos");

	//$result = mysql_fetch_array($photo);  //只能返回一条数据，所以需要循坏获取

	// while ($row=mysql_fetch_row($result))  //从结果集中取得一行作为数字数组
	// { 
	// 	for ($i=0; $i<mysql_num_fields($result); $i++ )  //返回结果集中字段的数
	// 	{ 
	// 		echo $row[$i]; 
	// 		echo "<br />";
	// 	}
	// } 

 ?>