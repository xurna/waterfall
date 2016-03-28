
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
			 opacity: 1;
			 filter:alpha(opacity=100);
		}
		img { width: 100%; } 
	</style>
</head>

<body >
	<div id="container" class="container">
		<!-- <div class="imgShow"><img src=""/></div>  -->
	</div>
	<input type="hidden" name="currentPage" id="currentPage" value="1">
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/getPhotos.js"></script>
<script type="text/javascript">

/**
 * 页面加载执行函数
 */
window.onload = function(){
	getImage();
	
}

/**
 * 窗口改变时重排渲染
 */
window.onresize = function(){
	var water = new WaterFall("container");
	water.show();
}

/**
 * ajax获取图片资源
 */
function getImage(){
	var html = "";
	var currentPage = parseInt($("#currentPage").val());
	//console.log(currentPage);
	$.ajax({
		url:"getAjax.php",
		type:'post',
		data:"currentPage="+currentPage,
		dataType:'json',
		success:function(result){
			//console.log(result);
			 var data = result;
			 $.each(data,function(index,value){
			 	var src = 'uploads/'+ value.photo;
			 		preLoad(src);	 					
			 });
					
			 $("#currentPage").val(currentPage+1);	
			
		}

	})
}

/**
 * 图片预加载
 */
function preLoad(src){
		var img = new Image();
		img.src = src;
		var html= "";
		img.onload = function(){
			html = " <div class='imgShow'><img src='"+ src+"'/> </div> "; 
			$(".container").append(html);
			// 瀑布流显示图片
			var water = new WaterFall("container");
			water.show();
		}
}

/**
 * 滚动条滚到底部时加载
 */
$(window).scroll(function(event){
	if($(window).scrollTop() + $(window).height() == $(document).height()){
		getImage();
	}
});

</script>
</html>
