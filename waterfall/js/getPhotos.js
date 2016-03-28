
function WaterFall(containerId){
	this.container = document.getElementById(containerId);
	this.conWidth = 0;//container宽度
	this.boxWidth = 0;//每一个格子的宽度

	this.columnNum = 1; //分为多少列
	this.columnHeight = [];//存储从0到columnNum的高度
	this.boxTagName = "div";
	this.boxList = []; //所有的格子的对象
	this.init();
}

/**
 * 获得最小的列的index
 */
WaterFall.prototype.getMinHeightCol = function(){
	var minCol = 0;
	var minHeight = this.columnHeight[minCol];
	for(var i=1; i<this.columnNum ; i++){
		var tmp = this.columnHeight[i];
		if(tmp < minHeight){
			minCol = i;
			minHeight = tmp;
		}
	}
	return minCol;
} 

/**
 * 初始化数据
 */
WaterFall.prototype.init = function(){
	this.boxList = this.container.getElementsByTagName(this.boxTagName);
	this.boxWidth = this.boxList[0].offsetWidth + 10;
	this.conWidth = this.container.offsetWidth;
	// 计算每行可以放的格子数量
	var n = parseInt(this.conWidth/this.boxWidth);
	this.columnNum = (n > 0) ? n : 1;	
}

/**
 * 计算每个格子的left和top
 */
WaterFall.prototype.show = function(){	
	var len = this.boxList.length;
	var conLeft = this.container.offsetLeft;
	var conTop = this.container.offsetTop;
	var marginTop = 10;
	var marginLeft = 10;
	for(var i=0; i<len; i++){
		if(i<this.columnNum){
			this.boxList[i].style.left = conLeft + marginLeft + i*this.boxWidth + 'px';
			this.boxList[i].style.top = conTop + 'px';
			this.columnHeight[i] = conTop + this.boxList[i].offsetHeight;
		}else{
			var minColum = this.getMinHeightCol();
			var boxHeight = this.boxList[i].offsetHeight + marginTop;
			this.boxList[i].style.left = conLeft + marginLeft + minColum*(this.boxWidth ) + 'px';
			this.boxList[i].style.top = this.columnHeight[minColum] + marginTop + 'px';
			this.columnHeight[minColum] += boxHeight;
		}
	}

}