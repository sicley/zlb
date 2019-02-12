<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>众联保——保险服务平台</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="../../../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../../bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../../../bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../../dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="../../../layui-v2.4.5/layui/css/layui.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
  <link rel="stylesheet" href="../../../dist/css/skins/skin-blue.min.css">
  <link rel="stylesheet" href="../../../bower_components/layer/skin/default/layer.css">
  <link rel="stylesheet" href="../../../bower_components/ztree/css/metroStyle/metroStyle.css"/>
  <link href="../../../js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
  
<link href="../../../js/kindeditor-4.1.10/plugins/code/prettify.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="../../../js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../../js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<script type="text/javascript" charset="utf-8" src="../../../js/kindeditor-4.1.10/plugins/code/prettify.js"></script>
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>众联保-</b>保险服务平台</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>众联保-</b>保险服务平台</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
  
          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            
              <div class="pull-right">             	 
                  <a href="logout.html" class="btn-sign-out" style='color:#444'>
                      <i class="fa fa-sign-out" aria-hidden="true"></i>
                      <span>退出</span>
                  </a>
               </div>
          
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p class='userName' id='userName'>用户名</p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>


      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">HEADER</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>产品管理</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="productview-menu treeview-menu">
            <li class='productview-menu_a treeview'>
            	<a id="serious_illness_prod" href="#"><span>重疾产品</span>
	            	 <span class="pull-right-container">
	                    <i class="fa fa-angle-left pull-right"></i>
	                </span>
            	 </a>
            	
            	<ul class="serious_illness_prod_a treeview-menu" >
            		<li><a id="serious_illness_prod_a" href="#">新增产品</a></li>
            		<li><a id="serious_illness_prod_b" href="#">待上线产品</a></li>
            		<li><a id="serious_illness_prod_c" href="#">已上线产品</a></li>
            	</ul>
            </li>
            <li><a id="load-sers-id">定期重疾产品</a></li>
            <li><a id="load-year-id">年金产品</a></li>
          </ul>
        <li class="treeview">
        	
       		<a href="#"><i class="fa fa-link"></i> <span>保险学堂</span>
	            <span class="pull-right-container">
	                <i class="fa fa-angle-left pull-right"></i>
	            </span>
            </a>
       		<ul class="treeview-menu">
	    		<li><a id="insurance_school_question">问答集锦</a></li>
	            <li><a id="insurance_school_case">案例讨论</a></li>
	            <li><a id="insurance_school_industry">行业资讯</a></li>
           </ul>   
    	</li>
    	   
       <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>用户反馈</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a id="feedback-list-id">列表展示</a></li>
          </ul>
        </li>
        
        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>活动管理</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a id="active-create-id">活动生成</a></li>
            <li><a id="active-list-id">活动列表</a></li>
             <li><a id="supplie-info-id">供应商管理</a></li>
          </ul>
        </li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
  
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h3 class="content-header-title" id="content-header-title">
        	
        <small class="content-header-small"></small>
      </h3>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard level" id='fuhao'></i></a></li>
        <li class="active active1"></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

     
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2019 <a href="#">Company</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane active" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="pull-right-container">
                    <span class="label label-danger pull-right">70%</span>
                  </span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<style>
.box{
	height:auto;
	min-height:600px;
	border-top:0px;
	padding-top:20px;
	
}
.serious_illness_prod_a{
	list-style:none;
    padding-left:20px;
    
}
.serious_illness_prod_a>li{
    text-align:left;
}

.insurance_school_a{
	list-style:none;
    padding-left:20px;
    display:none
}
.insurance_school_a>li{
    text-align:left;
}
.productview-menu_b:hover .insurance_school_a{
	display:block;
}
.active1{
	padding-left:0px;
}
.level:before{
	margin-right:10px;
}
.treeview-menu{
    padding-left:20px;
    cursor:pointer;
}
.pull-right{
	margin:15px 40px 0;
	color:#444;
}

</style>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<script src="layui-v2.4.5/layui/layui.js"></script>
<script type="text/javascript">
      $(function(){
    	  getChange("content-header-title","");
    	  getIndex();
    	  $("#load-role-id").click(function(){
    		 // console.log("hello world");
    		 $(".container-fluid").load("role/listUI.html",function(){
    			 $(".container-fluid").removeData("id");
    		 });
    	  })
    	  $("#load-user-id").click(function(){
    		 // console.log("hello world");
    		 $(".container-fluid").load("user/listUI.html",function(){
    			 $(".container-fluid").removeData("id");
    		 });
    	  })
    	  $("#serious_illness_prod_a").click(function(){
    		 // console.log("hello world");
    		 $(".container-fluid").load("product/seriousIllness.html",function(){
    			 $(".container-fluid").removeData("id");
    		 });
    	  })
    	  $("#serious_illness_prod_b").click(function(){
    		 $(".container-fluid").load("product/seriousIllnessProduct/soonList.html",function(){
    			 $(".container-fluid").removeData("id");
    		 });
    	  })
    	  $("#serious_illness_prod_c").click(function(){
    		 $(".container-fluid").load("product/seriousIllnessProduct/onlineList.html",function(){
    			 $(".container-fluid").removeData("id");
    		 });
    	  })
	      $("#insurance_school_question").click(function(){
    		 $(".container-fluid").load("school/question/onlineList.html",function(){
    		 });
    	  })
    	    $("#insurance_school_case").click(function(){
    		 $(".container-fluid").load("school/case/onlineList.html",function(){
    		 });
    	  })
    	   $("#insurance_school_industry").click(function(){
    		 $(".container-fluid").load("school/industry/onlineList.html",function(){
    		 });
    	  })
    	  $("#feedback-list-id").click(function(){
    		 $(".container-fluid").load("feedbackInformation/feedbackList.html",function(){
    			 $(".container-fluid").removeData("id");
    		 });
    	  })
    	   $("#active-create-id").click(function(){
    		 $(".container-fluid").load("activity/addUI.html",function(){
    			 $(".container-fluid").removeData("id");
    		 });
    	  })
    	  $("#active-list-id").click(function(){
    		 $(".container-fluid").load("activity/activitylist.html",function(){
    			 $(".container-fluid").removeData("id");
    		 });
    	  })
    	  $("#supplie-info-id").click(function(){
    		 $(".container-fluid").load("/supplier/supplierList.html",function(){
    			 $(".container-fluid").removeData("id");
    		 });
    	  })
    	  $('#load-sers-id').click(function(){
    		 $(".container-fluid").load("/product/forward.html",function(){
    			 $(".container-fluid").removeData("id");
    		 });
    	  })
    	  $('#load-year-id').click(function(){
    		 $(".container-fluid").load("/product/forward.html",function(){
    			 $(".container-fluid").removeData("id");
    		 });
    	  })
    	 $('#userName').html(getCookie('ZLB_TICKET'));
    	  
    	 
      })
    function getChange(className,content){
		var name=document.getElementsByClassName(className);
		name[0].innerHTML=content;
	}
    function getIndex(){
	    	$('#fuhao').show();
			$('.active1').show();
    		var level=document.getElementsByClassName('fa-dashboard');
    		var here=document.getElementsByClassName('active1');
    		var content=document.getElementById('content-header-title').innerHTML;  	
    		var index1=content.split("-")[0];
    		var index2=content.split("-")[1];
    		level[0].innerHTML=index1;
    		if(!index2){
    			$('#fuhao').hide();
    			$('.active1').hide();
    		}
    		else{
    			
    			here[0].innerHTML=index2;
    		}
    		
    		//console.log(index1);
    }
    /*日期转换函数*/
    function dateFormat(longTypeDate){  
        var dateType = "";  
        var date = new Date();  
        date.setTime(longTypeDate);  
        dateType += date.getFullYear();   //年  
        dateType += "-" + getMonth(date); //月   
        dateType += "-" + getDay(date);   //日  
        return dateType;
    } 
    //返回 01-12 的月份值   
    function getMonth(date){  
        var month = "";  
        month = date.getMonth() + 1; //getMonth()得到的月份是0-11  
        if(month<10){  
            month = "0" + month;  
        }  
        return month;  
    }  
    //返回01-30的日期  
    function getDay(date){  
        var day = "";  
        day = date.getDate();  
        if(day<10){  
            day = "0" + day;  
        }  
        return day;  
    }
    //状态
    function getStatus(status){
    	//console.log(status)
    	if(status==1){
    		return "处理中";
    	}else if(status==2){
    		return "已处理";
    	}else if (status==0){
    		return "未处理";
    	}
    }
    
    function getCookie(cookie_name){
        var allcookies = document.cookie;
        
        var cookie_pos = allcookies.indexOf(cookie_name);   //索引的长度
        // 如果找到了索引，就代表cookie存在，
        // 反之，就说明不存在。
        if (cookie_pos != -1)
        {
            // 把cookie_pos放在值的开始，只要给值加1即可。
            cookie_pos += cookie_name.length + 1;     
            var cookie_end = allcookies.indexOf(";", cookie_pos);

            if (cookie_end == -1)
            {
                cookie_end = allcookies.length;
            }
            var value = unescape(allcookies.substring(cookie_pos, cookie_end));  
            
            var value1= value.substring(23); 
        }
        
        return value1;
    }

    
</script>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>