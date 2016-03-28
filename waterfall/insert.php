<?php 
	require('./config.php');

	/*上传封面图片*/

$cover=$_FILES["cover"]["name"];
$type=$_FILES["cover"]["type"];
$size=$_FILES["cover"]["size"];
$address=$_FILES["cover"]["tmp_name"];

  if ((($_FILES["cover"]["type"] == "image/gif")
  || ($_FILES["cover"]["type"] == "image/jpeg")
  || ($_FILES["cover"]["type"] == "image/png")
  || ($_FILES["cover"]["type"] == "image/pjpeg"))
  && ($_FILES["cover"]["size"] < 1100000))
  {

    if ($_FILES["cover"]["error"] > 0) {
		 echo "Error: " . $_FILES["cover"]["error"] . "<br />";
    }
    else {
  		// 将上传的文件移动到新位置。
  		// 若成功，则返回 true，否则返回 false。
      move_uploaded_file($_FILES["cover"]["tmp_name"],"uploads/" . $_FILES["cover"]["name"]);

      $insert="insert into photos (photo,type,size,address) values ('$cover','$type','$size','$address')";		
      $result=mysql_query($insert);
      //echo $insert;
      //var_dump($result);
      if($result==true){
      		echo "<script>alert('insert success');window.location.href='insertPic.php'</script>";
      	}
        else{
          	echo "<script>alert('failure')</script>";
        }
   		}

	}
  
  else {
    echo "<script>alert('The picture is too big or is not a picture ,please upload a picture.');history.go(-1);</script>";
  }

 ?>