<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="row">
	<div class="col-xs-12">
		<div class="box" style='padding-top:0px'>
			
			<!-- /.box-header -->
			<div class="box-body table-responsive no-padding" >
				<table class="table table-hover">
					<thead style='border-top:3px solid #fcfcfc'>
						<tr>
							<th><div class='title'>产品名称</div></th>
							<th><div class='title'>保险公司名称</div></th>
							<th><div class='title'>修改</div></th>
							<th><div class='title'>上线</div></th>
							<th><div class='title'>删除</div></th>
							
							
							
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
.title{
  	padding:8px 0px;
  	font-size:18px;
  	color:#2F4056;
  	
  }
.btnp{
  
	background-color:#3c8dbc;
	color:#fff;
	
  }
td{
	text-align:center;
	border-right:1px solid #f4f4f4;
	border-bottom:1px solid #f4f4f4;
}
th{
	text-align:center;
	border-right:1px solid #f4f4f4;
}
.btn2{
	background-color:#009688;
}
.btn3{
	background-color:#FF5722;
}
</style>
<script type="text/javascript">
$(function(){
	$("#pageId").load("pageUI.html");//page.html
	getChange("content-header-title","重疾产品-待上线产品列表");
	//页面加载完成以后,异步加载角色信息
	doGetObjects();
	getIndex();
	
});


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

function doGetObjects(){
	var url="product/doFindSoonList.do";
	var page=
		$("#pageId").data("pageCurrent");
	if(!page)page=1;
	var params={"page":page,"rows":20};
	
	console.log(params);
	$.getJSON(url,params,function(result){//JsonResult
		console.log(result)
		if(result.status==200){
			console.log(result)
		 //将服务端返回的数据添填充在表格中
		 setTableTBodyRows(result.data.productSerList);
		 setPagination(result.data);
		}else{
		  alert(result.msg);
		  
		}
	});
}


//4w(when,what,where,why)+h(how)
function setTableTBodyRows(result){
	//debugger;
	var tBody=$("#tbodyId");
	//清空原有数据
	tBody.empty();
	//迭代结果集
	console.log(result)
	//查询的结果绑定在div上
	$(".container-fluid").data("resultList",result);
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
	  "<td><div style='height:38px;line-height:38px'>"+result[i].productName+"</div></td>"+
	  "<td><div style='height:38px;line-height:38px'>"+result[i].attrCompany+"</div></td>"+
	  "<td><button class='btnp layui-btn changeBtn' onClick=getNew("+i+")>修改</button></td>"+
	  "<td><button class='btnp btn2 layui-btn' onClick='changeStaOnline(this)'>上线</button></td>"+
	  "<td><button class='btnp btn3 layui-btn'onClick='doDeleteRow(this)'>删除</button></td>";
	  //将td追加到tr中
	  tr.append(tds);
	  //将tr追加到tbody中
	  tBody.append(tr);
	  
	}
}
/*产品修改操作*/
function getNew(i){
	//i=i+1;
	var list=$(".container-fluid").data("resultList")
	$(".container-fluid").data("product",list[i]);
	$(".container-fluid")
    .load("product/serious_illness_update.html",function(){
	});
}
/*删除产品操作*/
function doDeleteRow(obj){
	if (!confirm("确认要删除？")) { 
        window.event.returnValue = false; 
    } 
	else{
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





