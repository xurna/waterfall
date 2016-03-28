
 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="UTF-8">
 	<title>插入图片</title>
 	<link rel="stylesheet" type="text/css" href="css/common.css">
 	<script src="js/imagePreview.js"></script>
 </head>
 <body>
 	<form action="insert.php"  method="post" name="projectform" enctype="multipart/form-data" onsubmit="return true;">
 		<div class="infocontent">
			<div class="title">上传照片：<span>*</span></div>

			<div id="localImag1">
				<img id="preview1" border='0' src=''>
			</div>

			<div class="req">格式支持jpg,png，图片大小不得超过1M</div>

			<div id="butt1">
				<input type="file" name="cover" id="doc1" class="pic" onchange="setImagePreview(1);">
				<input type="button" value="上传图片" class="button">
			</div>  

			<div style="clear:both"></div>
		</div>

		<input type="submit" value="提交" name="submit" class="but"></input>
 	</form>
 </body>
 </html>

