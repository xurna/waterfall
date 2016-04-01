<!DOCTYPE HTML>
<html>
    <head>
    <meta charset="utf-8">
    <title>瀑布流</title>
    <link rel="stylesheet" href="css/common.css">
    <style type="text/css">
		body, div, a, img {
			 margin: 0;
			 padding: 0;
			 list-style: none;
			 font: bold 12px "微软黑体";
		}
		.container {
			 position: absolute;
			 top: 20px;
			 width:100%;
		}
		.imgShow {
			 position: absolute;
			 border: solid 1px #ccc;
			 padding: 10px;
			 width: 200px;
			 top: 0px;
			 left: 0px;
			  -webkit-transition: all .7s ease-in .1s;
			 -moz-transition: all .7s ease-in .1s;
			 -o-transition: all .7s ease-in .1s;
			 transition: all .7s ease-in .1s
		}
		img { width: 100%; } 
	</style>
	</head>
<body >
	<div id="container" class="container">
		<?php 
			require('./getImage.php');
			while ($row=mysql_fetch_row($result)) 
			{ 
				for ($i=0; $i<mysql_num_fields($result); $i++ ) 
				{ 
		 ?>	

			      <div class="imgShow"><a href="uploads/<?php echo $row[$i]; ?> "><img src="uploads/<?php echo $row[$i];  ?>"/></a> </div> 

		<?php 
				}
			} 

		 ?>
 	</div>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/getPhotos.js"></script>
<script type="text/javascript">

/**
 * 页面加载执行函数
 */
window.onload = function(){
	var water = new WaterFall("container");
	 water.show();
	
}
/**
 * 窗口改变时重排渲染
 */
 var timer;
window.onresize = function(){
	clearTimeout(timer);
	timer = setTimeout(function(){
		var water = new WaterFall("container");
		water.show()
	},300);
}

</script>
</html>
