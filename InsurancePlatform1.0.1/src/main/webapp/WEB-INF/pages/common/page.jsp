<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<ul class="pagination pagination-sm no-margin pull-right">
	<li><a class="first">首页</a></li>
	<li><a class="pre">上一页</a></li>
	<li><a class="next">下一页</a></li>
	<li><a class="last">尾页</a></li>
	<li><a class="rowCount">总记录数(1)</a></li>
	<li><a class="pageCount">总页数(1)</a></li>
	<li><a class="pageCurrent">当前页(1)</a></li>
</ul>
<style>
	.box{
	position:relative;
	padding-bottom:100px;
}
#pageId{
	position:absolute;
	bottom:20px;
	right:20px;
	border-top:0px;
}
</style>
<script type="text/javascript">
//注册分页click 监听事件
$("#pageId").on("click",".first,.pre,.next,.last",doJumpToPage)
/*设置分页信息 */
function setPagination(pageObject){
	console.log(pageObject.pageCount)
	$(".rowCount").html("总记录数("+pageObject.rowCount+")")
	$(".pageCount").html("总页数("+pageObject.pageCount+")")
	$(".pageCurrent").html("当前页("+pageObject.pageCurrent+")")
	$("#pageId").data("pageCurrent",pageObject.pageCurrent);
	$("#pageId").data("pageCount",pageObject.pageCount);

}
/*跳转某一页 */
function doJumpToPage(){
	var pageCurrent=$("#pageId").data("pageCurrent");
	var pageCount=$("#pageId").data("pageCount");
	var cls=$(this).prop("class");
	if(cls=="first"){//首页
		pageCurrent=1;
	}else if(cls=="pre"&&pageCount>1){//上一页
		pageCurrent--;
	}else if(cls=="next"&&pageCurrent<pageCount){//下一页
		pageCurrent++;
	}else if(cls=="last"){//尾页
		pageCurrent=pageCount;
	}
	//重新绑定pageCurrnet
	$("#pageId").data("pageCurrent",pageCurrent);
	//重新查询
	doGetObjects();
}
</script>

