<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<h3 class="box-title">待上线产品</h3>

				<div class="box-tools">
					<div class="input-group input-group-sm" style="width: 350px;">
						<input type="text" name="table_search" id="searchNameId"
							class="form-control pull-right" placeholder="用户名">

						<div class="input-group-btn">
							<button type="button" class="btn btn-default btn-search">
                                <i class="fa fa-search"></i>
							</button>
							<button type="button" class="btn btn-default btn-add">添加</button>
							<button type="button" class="btn btn-default btn-update">修改</button>
						</div>
					</div>
				</div>
			</div>
			<!-- /.box-header -->
			<div class="box-body table-responsive no-padding">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>产品名称</th>
							<th>保险公司名称</th>
							<th>修改</th>
							<th>上线</th>
							<th>删除</th>
							
						</tr>
					</thead>
					<tbody id="tbodyId"></tbody>
				</table>
			</div>
			<div id="pageId" class="box-footer clearfix">
			</div>
			<!-- /.box-body -->
		</div>
		<!-- /.box -->
	</div>
</div>
<style>
.btnp{
   border:0px;
   margin-left:-5px;
  }

</style>
<script type="text/javascript">
$(function(){
	$("#pageId").load("pageUI.do");//page.html
	//页面加载完成以后,异步加载角色信息
	doGetObjects();
	$(".input-group-btn")
	.on("click",".btn-add,.btn-update",doLoadEditPage)
	.on("click",".btn-search",doQueryObject);
});
function aaa(){
	
}
/**加载添加或编辑页面*/
function doLoadEditPage(){
	//1.获得点击对象上的class,根据class判定点击的对象
	var title;
	if($(this).hasClass("btn-add")){
		title="添加用户";
	}else if($(this).hasClass("btn-update")){
		title="修改用户"
		//获得选中的id
		var id=getCheckedId();
		console.log("id="+id)
		//对获得的数据进行验证
		if(!id){
			alert("请先选择");
			return;
		}
		//绑定数据(修改页面要使用此shuju)
		$(".container-fluid")
		.data("id",id)
	}
	//2.发异步请求加载页面
	$(".container-fluid")
	       .load("user/editUI.do",function(){
		//修改页面标题
		$(".box-title").html(title);
	});
}
 /*获取选中的id值*/
 function getCheckedId(){
	 var checkedId;
	 $("tbody input[name='checkedId']")
	 .each(function(){
		 if($(this).prop("checked")){
			 checkedId=$(this).val();
		 }
	 });
	 return checkedId;
 }
/**处理查询按钮的点击事件*/
function doQueryObject(){
	//重新初始化页码的值
	$("#pageId").data("pageCurrent",1);
	//执行查询操作
	doGetObjects();
}
function doGetObjects(){
	var url="product/doFindSoonList.do";
	var page=
		$("#pageId").data("pageCurrent");
	if(!page)page=1;
	var params={"page":page,"rows":10};
	//console.log($(this));
	console.log(params);
	$.getJSON(url,params,function(result){//JsonResult
		console.log(result)
		if(result.status==200){
			console.log(result)
		 //将服务端返回的数据添填充在表格中
		 setTableTBodyRows(result.data.productSerList);
		 //设置分页信息
		 var length=result.data.length
		 //var pageObject={"page":2,"rows":10,"length":length}
		 setPagination(result.data);
		}else{
		  alert(result.msg);
		  
		}
	});
}


//4w(when,what,where,why)+h(how)
function setTableTBodyRows(result){
	//debugger;
	console.log("setTableTBodyRows");
	var tBody=$("#tbodyId");
	//清空原有数据
	tBody.empty();
	//迭代结果集
	console.log(result)
	for(var i in result){//循环一次取一行记录
	  //构建tr对象
	  var tr=$("<tr></tr>");
	  
	  //在tr对象上绑定一个id,一个属性id，一个得分id
	  tr.data("productId",result[i].productId);
	  tr.data("attrId",result[i].attrId);
	  tr.data("scoreId",result[i].scoreId);
	  
	  //构建td对象
	  //console.log(result[i])
	  var obj=result[i].productId
	  var tds=
	  "<td>"+result[i].productName+"</td>"+
	  "<td>"+result[i].attrCompany+"</td>"+
	  "<td><button class='btnp changeBtn' onClick=getNew("+obj+")>修改</button></td>"+
	  "<td><button class='btnp' onClick='changeStaOnline(this)'>上线</button></td>"+
	  "<td><button class='btnp'onClick='doDeleteRow(this)'>删除</button></td>";
	  //将td追加到tr中
	  tr.append(tds);
	  //将tr追加到tbody中
	  tBody.append(tr);
	  
	}
}
function getNew(i){
	console.log(i)
	//serious_illness_update.jsp
}
/*删除产品操作*/
function doDeleteRow(obj){
	
	var tr=$(obj).parent().parent();
	var productId=tr.data("productId");
	var attrId=tr.data("attrId");
	var scoreId=tr.data("scoreId");
	var url="product/doDeleteObject.do";
	var params={"productId":productId,"attrId":attrId,"scoreId":scoreId};
	console.log(params);
	$.post(url,params,function(result){
		alert(result.msg);
		doGetObjects();
	});
}
/*产品上线操作*/
function changeStaOnline(obj){
	//1.url
	var url="product/changeStaOnline.do";
	//2.params
	var tr=$(obj).parent().parent();
	var productId=tr.data("productId");
	var params={"productId":productId}
	console.log(params);
	//3.post
	$.post(url,params,function(result){//4.callback
		if(result.status==200){
			alert(result.msg);
			doGetObjects();
		}else{
			alert(result.msg);
		}
	});
}
</script>





