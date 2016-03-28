//图片上传预览功能
function setImagePreview(n) {
	var docObj=document.getElementById("doc"+n);
	 
	var imgObjPreview=document.getElementById("preview"+n);
	 var preview1 = document.getElementById("preview1");
	 
	if(docObj.files &&docObj.files[0]){
		var localImag1 = document.getElementById("localImag1");
		imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
		localImag1.style.width = 200+"px";
 		localImag1.style.height = "auto";
 		preview1.style.width = 200+"px";
 	 	preview1.style.height = "auto";
	}
	else{
		//IE下，使用滤镜获取数据;
		docObj.select();
		var imgSrc = document.selection.createRange().text;
		var localImagId = document.getElementById("localImag"+n);
		//必须设置初始大小
		localImagId.style.width = 200+"px";
		localImagId.style.height = "auto";
		console.log("hi");
		//图片异常的捕捉，防止用户修改后缀来伪造图片
		try{
			localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
			localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
		}
		catch(e){
			alert("您上传的图片格式不正确，请重新选择!");
			return false;
		}

		imgObjPreview.style.display = 'none';
		document.selection.empty();
	}

	return true;
}
