<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<h3 class="box-title">新增保险产品</h3>
				<div >
					<form class="form-inline">
					  <div class="form-group" >
					    <label for="product_name">产品名称</label>
					    <textarea class="form-control" style="width:270px" rows="3" id="product_name"> </textarea>
					    
					  </div >
					  <div class="form-group">
					    <label for="compony_prop">公司性质</label>
					    <select  class="compony_prop" id="compony_prop">
							  <option class="compony_prop_in" value ="中资">中资</option>
							  <option class="compony_prop_in"value ="外资">外资</option>
							  
						</select>
					  </div>
					</form>
					<form class="form-inline">
					  <div class="form-group">
					    <label for="attr_company">所属保险公司</label>
					    <textarea class="form-control" style="width:270px" rows="3" id="attr_company"> </textarea>
					  </div>
					  <div class="form-group">
					    <label for="score_company">评分</label>
					    <input type="text" class="form-control" id="score_company" >
					  </div>
					</form>
						<form class="form-inline">
					  <div class="form-group">
					    <label for="attr_illness_num">重疾数量</label>
					    <textarea class="form-control" rows="3"style="width:270px" id="attr_illness_num"> </textarea>
					  </div>
					  <div class="form-group">
					    <label for="score_illness_num">评分</label>
					    <input type="text" class="form-control" id="score_illness_num" >
					  </div>
					</form>
						<form class="form-inline">
					  <div class="form-group">
					    <label for="attr_illness_proportion">重疾赔付比例</label>
					    <textarea class="form-control" rows="3" style="width:270px"id="attr_illness_proportion"> </textarea>
					  </div>
					  <div class="form-group">
					    <label for="score_illness_proportion">评分</label>
					    <input type="text" class="form-control" id="score_illness_proportion" >
					  </div>
					</form>
					<form class="form-inline">
					  <div class="form-group">
					    <label for="attr_illness_times">重疾赔付次数</label>
					    <textarea class="form-control" rows="3" style="width:270px"id="attr_illness_times"> </textarea>
					  </div>
					  <div class="form-group">
					    <label for="score_illness_times">评分</label>
					    <input type="text" class="form-control" id="score_illness_times" >
					  </div>
					</form>
					<form class="form-inline">
					  <div class="form-group">
					    <label for="attr_dead_duty">身故责任</label>
					    <textarea class="form-control" rows="3" style="width:270px"id="attr_dead_duty"> </textarea>
					  </div>
					  <div class="form-group">
					    <label for="score_dead_duty">评分</label>
					    <input type="text" class="form-control" id="score_dead_duty" >
					  </div>
					</form>
					<form class="form-inline">
					  <div class="form-group">
					    <label for="attr_serious_illness_duty">全残责任</label>
					    <textarea class="form-control" rows="3" style="width:270px"id="attr_serious_illness_duty"> </textarea>
					  </div>
					  <div class="form-group">
					    <label for="score_serious_illness_duty">评分</label>
					    <input type="text" class="form-control" id="score_serious_illness_duty" >
					  </div>
					</form>
					<form class="form-inline">
					  <div class="form-group">
					    <label for="attr_mild_case_num">轻症数量</label>
					    <textarea class="form-control" rows="3"style="width:270px" id="attr_mild_case_num"> </textarea>
					  </div>
					  <div class="form-group">
					    <label for="score_mild_case_num">评分</label>
					    <input type="text" class="form-control" id="score_mild_case_num" >
					  </div>
					</form>
					<form class="form-inline">
					  <div class="form-group">
					    <label for="attr_mild_case_times">轻症赔付次数</label>
					    <textarea class="form-control" rows="3" style="width:270px"id="attr_mild_case_times"> </textarea>
					  </div>
					  <div class="form-group">
					    <label for="score_mild_case_times">评分</label>
					    <input type="text" class="form-control" id="score_mild_case_times" >
					  </div>
					</form>
					<form class="form-inline">
					  <div class="form-group">
					    <label for="attr_mild_case_proportion">轻症赔付比例</label>
					    <textarea class="form-control" rows="3"style="width:270px" id="attr_mild_case_proportion"> </textarea>
					  </div>
					  <div class="form-group">
					    <label for="score_mild_case_proportion">评分</label>
					    <input type="text" class="form-control"  id="score_mild_case_proportion" >
					  </div>
					</form>
				</div>
			</div>
			<!-- /.box-header -->
		<div class="box-body table-responsive no-padding">
          <button type="button" class="btn btn-success" id="com_submit" style="width:70px" onClick=getParams()>保存</button>
          <button type="button" class="btn btn-warning" id="com_cancel" style="width:70px">取消</button>
        </div>

			<!-- /.box-body -->
			<div id="pageId" class="box-footer clearfix">
            </div>
		</div>
		<!-- /.box -->
	</div>
</div>
<style>
    .box-title{
    	padding:10px 10px;
    }
	.form-inline{
	      padding:10px 10px;
	      box-sizing:border-box;
	}
	
	.form-group:first-child{
		width:400px;
	}
	.form-group:first-child label{
		width:90px;
		margin-right:10px;
	}
	.form-group:last-child label{
		
		margin-right:10px;
	}
	.compony_prop{
		 width:80px;
		 outline: none;
		 height: 30px;
		 text-align:center;
	}
	
	
	
</style>
<script type="text/javascript" src="bower_components/treegrid/jquery.treegrid.extension.js"></script>
<script type="text/javascript" src="bower_components/treegrid/jquery.treegrid.min.js"></script>
<script type="text/javascript" src="bower_components/treegrid/tree.table.js"></script>
<script type="text/javascript">
var attrNullFlag=true;
var attrFlag=true;
var scoreNullFlag=true;
var scoreFlag=true;
$(function(){
	  
	  $(".input-group-btn")
	  .on("click",".btn-delete",doDeleteObject)
	  .on("click",".btn-add,.btn-update",doLoadEditPage)
	  doGetObjects();
	  getChange("content-header-title","重疾产品-重疾产品添加");
	  getIndex();
});

function getParams(){
	attrNullFlag=true;
	scoreFlag=true;
	scoreNullFlag=true;
	scoreFlag=true;	
	var params={};
	params.attrCompany=getParamsVal('attr_company');
	params.attrIllnessNum=getParamsNumVal('attr_illness_num');
	params.attrIllnessProportion=getParamsVal('attr_illness_proportion');
	params.attrIllnessTimes=getParamsVal('attr_illness_times');
	params.attrDeadDuty=getParamsVal('attr_dead_duty');
	params.attrSeriousIllnessDuty=getParamsVal('attr_serious_illness_duty');
	params.attrMildCaseNum=getParamsNumVal('attr_mild_case_num');
	params.attrMildCaseTimes=getParamsVal('attr_mild_case_times');
	params.attrMildCaseProportion=getParamsVal('attr_mild_case_proportion');
	params.scoreCompany=getParamsScoreVal('score_company');
	params.scoreIllnessNum=getParamsScoreVal('score_illness_num');
	params.scoreIllnessProportion=getParamsScoreVal('score_illness_proportion');
	params.scoreIllnessTimes=getParamsScoreVal('score_illness_times');
	params.scoreDeadDuty=getParamsScoreVal('score_dead_duty');
	params.scoreSeriousIllnessDuty=getParamsScoreVal('score_serious_illness_duty');
	params.scoreMildCaseNum=getParamsScoreVal('score_mild_case_num');
	params.scoreMildCaseTimes=getParamsScoreVal('score_mild_case_times');
	params.scoreMildCaseProportion=getParamsScoreVal('score_mild_case_proportion');
	params.productName=getParamsVal('product_name');
	params.companyProp=getComProp('compony_prop');
	console.log(params.componyProp);
	//发起请求执行新增操作
	if(attrNullFlag==true&&scoreFlag==true&&attrFlag==true&&scoreNullFlag==true){
		var url="product/doInsertSeriousIllnessProduct.do";
		$.post(url,params,function(result){//4.callback
			console.log(result)
			if(result.status==200){
				clearContent();
				alert(result.msg);
				
			}else{
				alert(result.msg);
			}
		});
	}
	
		

	
}
function getComProp(param){
	var componyProp=document.getElementById(param);
	var index=componyProp.selectedIndex ;
	componyProp=componyProp.options[index].value;
	return componyProp;
}
function getParamsVal(param){
	var div=document.getElementById(param);
	var paramVal=div.value;
	if(paramVal=="" && attrNullFlag==true){
		attrNullFlag=false;
		alert("内容部分不能为空！");
		return
	}else if(paramVal.length>50 && attrFlag==true){
		attrFlag=false;
		alert("字数大小有误，内容不能超过50字！")
		return
	}
	return paramVal;
}
function getParamsScoreVal(param){
	var div=document.getElementById(param);
	var paramVal=div.value;
	if(paramVal.length<1 && scoreFlag==true){
		scoreFlag=false;
		alert("评分不能为空！");
		return
	}else if(!checkScoreVal(paramVal) && scoreNullFlag==true){
		scoreNullFlag=false;	
		alert("产品评分不大于99且不小于-999，最多2位小数！");
		return
	} 

	return paramVal;
}
function getParamsNumVal(param){
	var div=document.getElementById(param);
	var paramVal=div.value;
	if(paramVal>999 ||paramVal<0 ||isNaN(paramVal) || paramVal%1!=0 && scoreNullFlag==true){
		scoreNullFlag=false;
		alert("数量请输入0-999的整数！");
		return
	}else if(paramVal.length<1 && scoreFlag==true){
		scoreFlag=false;
		alert("数量不能为空！");
		return
	}
	return paramVal;
}
function checkScoreVal(param){
	var ret=new RegExp("^0{1}([.]{1}[0-9]{1,2})?$|^[0-9]?[0-9]\d*([.]{1}[0-9]{1,2})?$|^-[0-9]?[0-9]?[0-9]\d*([.]{1}[0-9]{1,2})?$");
	if(ret.test(param)){
		if(param<=99 && param>=-999){
			return true
		}
		return false;
	}
	return false;
}
function clearContent(){
	var div=document.getElementsByClassName	("form-control");
	for(i=0;i<div.length;i++){
		div[i].value='';
	}
	
}
function doLoadEditPage(){
	var title;
	if($(this).hasClass("btn-add")){
		title="添加菜单";
	}else if($(this).hasClass("btn-update")){
		title="修改菜单";
		var id=getSelectedId();
		if(id==-1){
			alert("请先选择");
			return;
		}
		$(".container-fluid").data("id",id);
	}
	var url="menu/editUI.do";
	$(".container-fluid").load(url,function(){
	    $(".box-title").html(title);
	});	

}
function doGetObjects() {

}
function doDeleteObject(){
	//1.获取选中的菜单
	var id=getSelectedId();
	if(id==-1){
		alert("请先选择");
		return;
	}
	//2.发起异步请求执行删除操作
	var url="menu/doDeleteObject.do";
	var params={menuId:id}
	$.post(url,params,function(result){
		if(result.state==1){
			alert(result.message);
			doGetObjects();
		}else{
			alert(result.message);
		}
	});
}
/*获取选中的id*/
function getSelectedId(){
	//1.1 获得选中的对象,默认返回值为一个对象数组
	var selections=$("#menuTable")
	.bootstrapTreeTable("getSelections");
	if(selections.length==0){
	 return -1;//表示没选择任何对象
	}
	//1.2获得选中数组中下标为0的元素id的值
	return selections[0].id;
  }


</script>












