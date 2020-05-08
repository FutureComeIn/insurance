<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Bootstrap -->
    <link href="../../../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../../../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../../../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../../../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="../../../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="../../../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="../../../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../../../build/css/custom.min.css" rel="stylesheet">
    <style type="text/css">
    	
    	#form-user{
    		width: 350px;
				margin-top: 50px;
    		margin:0px auto;
    		

    	}
    	
    	</style>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>旭璨办公系统</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img ">
              </div>
              <div class="profile_info">
                <span>欢迎,</span>
                <h2>谷锦涛</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>导航</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> 报案管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="xx.jsp">报案管理</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-home"></i> 调度管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="xx.jsp">调度管理</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-home"></i> 勘察定损 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="xx.jsp">勘察定损</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-home"></i> 立案处理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="xx.jsp">立案处理</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-home"></i> 核损审核 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="xx.jsp">核损审核</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-home"></i> 理算处理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="xx.jsp">理算处理</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-home"></i> 核赔处理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="xx.jsp">核赔处理</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-home"></i> 结案处理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="xx.jsp">结案处理</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> 保单管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="form.jsp">保单管理</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> 员工管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="employees.jsp">员工管理</a></li>    
                    </ul>
                  </li>
                </ul>
              </div>
              
            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.jsp">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/img.jpg" alt="">信息管理
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> 会议信息</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>信息</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">帮助</a></li>
                    <li><a href="login.jsp"><i class="fa fa-sign-out pull-right"></i> 退出登录 </a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->
        
        <!-- page content -->
        <div class="right_col" role="main">
         
				
				
				<!--
                	作者：offline
                	时间：2017-10-24
                	描述：空白
                -->
				
					 <div class="col-md-4">
					 		<div class="dropdown">
							  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
							    <span id="find_title" />请选择查询条件</span>
							    <span class="caret"></span>
							  </button>
							  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							    <li><a href="#" onclick="employees_find(1);">员工姓名</a></li>
							    <li><a href="#" onclick="employees_find(2)">员工编号</a></li>
							    <li><a href="#" onclick="employees_find(3)">员工部门</a></li>
							  </ul>
							</div>
					 </div>
				
				
				
					<!--
                    	作者：offline
                    	时间：2017-10-24
                    	描述：搜索用户信息
                    -->
	        <div class="col-md-4 input_find" id="user_name">
		       <form action="#" method="get" class="sidebar-form">
		           <div class="input-group">
		               <input type="text" name="q" class="form-control find_name1" placeholder="请输入员工姓名....."/>
		               <span class="input-group-btn" onclick="find(1)">
		                   <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
		               </span>
		           </div>
		       </form>
				</div>
				
				<div class="col-md-4 input_find" id="user_id">
		       <form action="#" method="get" class="sidebar-form">
		           <div class="input-group">
		               <input type="text" name="q" class="form-control find_name2" placeholder="请输入员工编号....."/>
		               <span class="input-group-btn" onclick="find(2)">
		                   <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
		               </span>
		           </div>
		       </form>
				</div>
				
				<div class="col-md-4 input_find" id="user_department">
		       <form action="#" method="get" class="sidebar-form">
		           <div class="input-group">
		               <input type="text" name="q" class="form-control find_name3" placeholder="请输入员工部门....."/>
		               <span class="input-group-btn" onclick="find(3)">
		                   <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
		               </span>
		           </div>
		       </form>
				</div>
			
			
				<div class="col-md-4" id="add_employees">
        	<button type="button" class="btn btn-primary btn-small" id="add_but" onclick="add_employess();">
					 添加员工
					</button>
				</div>





					<!--
                    	作者：offline
                    	时间：2017-10-24
                    	描述：列表开始
                    -->

        	<div id="table">
						<table class="table table-bordered">
					 		<tr class="">
					 			<td class="active">编号</td>
					 			<td class="active">姓名</td>
					 			<td class="active">年龄</td>
					 			<td class="active">性别</td>
					 			<td class="active">电话</td>
					 			<td class="active">Email</td>
					 			<td class="active">操作</td>
					 		</tr>	
					 		<tr class="">
					 			<td class="info">001</td>
					 			<td class="info">张三</td>
					 			<td class="info">21</td>
					 			<td class="info">男</td>
					 			<td class="info">13574819985</td>
					 			<td class="info">1477457321@qq.com</td>
					 			<td class="info">
					 				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#upd-UserInfo">
									 修改
									</button>
									<button type="button" class="btn btn-danger btn-sm">
									删除
									</button>
									<!-- Modal -->
									<div class="modal fade" id="upd-UserInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
									  <div class="modal-dialog" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="myModalLabel">修改用户</h4>
									        	
									        	
									        
									      </div>
									      <div id="" style="margin: 20px;">
													<form>
													  <div>
													    <label>用户名</label>
													    <input type="text" class="form-control" id="form-user" placeholder="请输入你的用户名">
													  </div>
													  
													  <div class="form-group">
													    <label for="form-user">年龄</label>
													    <input type="email" class="form-control" id="form-user" placeholder="请输入你的年龄">
													  </div>
													  
													 <div class="radio">
													  	<b>性别</b></br>
													  <label>
													    <input type="radio" name="optionsRadios" id="optionsRadios1" value="男" checked>
													    	男
													  </label>
													  <label>
													    <input type="radio" name="optionsRadios" id="optionsRadios2" value="女">
													   		女
													  </label>
														</div>
													  
													  <div class="form-group">
													    <label for="form-user">电话</label>
													    <input type="email" class="form-control" id="form-user" placeholder="请输入你的电话">
													  </div>
													  
													  <div class="form-group">
													    <label for="form-user">Email</label>
													    <input type="email" class="form-control" id="form-user" placeholder="请输入你的Email">
													  </div>
													  
												  	<button type="submit" class="btn btn-primary">提交</button>
													</form>
												</div>&nbsp;
									    </div>
									  </div>
									</div>
					 			</td>	
					 		</tr>	
					 		
					 		
					 		<tr class="">
					 			<td class="info">002</td>
					 			<td class="info">李四</td>
					 			<td class="info">25</td>
					 			<td class="info">男</td>
					 			<td class="info">15211856795</td>
					 			<td class="info">178218675@qq.com</td>
					 			<td class="info">
					 				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#upd-UserInfo">
									 修改
									</button>
									<button type="button" class="btn btn-danger btn-sm">
									删除
									</button>
								</td>
							</tr>
							
												 		<tr class="">
					 			<td class="info">003</td>
					 			<td class="info">王五</td>
					 			<td class="info">24</td>
					 			<td class="info">女</td>
					 			<td class="info">17768646891</td>
					 			<td class="info">768765348@qq.com</td>
					 			<td class="info">
					 				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#upd-UserInfo">
									 修改
									</button>
									<button type="button" class="btn btn-danger btn-sm">
									删除
									</button>
								</td>
							</tr>
							
												 		<tr class="">
					 			<td class="info">004</td>
					 			<td class="info">赵六</td>
					 			<td class="info">31</td>
					 			<td class="info">男</td>
					 			<td class="info">13695762234</td>
					 			<td class="info">155688451@qq.com</td>
					 			<td class="info">
					 				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#upd-UserInfo">
									 修改
									</button>
									<button type="button" class="btn btn-danger btn-sm">
									删除
									</button>
								</td>
							</tr>
							
												 		<tr class="">
					 			<td class="info">005</td>
					 			<td class="info">田七</td>
					 			<td class="info">18</td>
					 			<td class="info">男</td>
					 			<td class="info">18845766235</td>
					 			<td class="info">tianqi@163.com</td>
					 			<td class="info">
					 				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#upd-UserInfo">
									 修改
									</button>
									<button type="button" class="btn btn-danger btn-sm">
									删除
									</button>
								</td>
							</tr>
							
												 		<tr class="">
					 			<td class="info">006</td>
					 			<td class="info">赵丽颖</td>
					 			<td class="info">18</td>
					 			<td class="info">女</td>
					 			<td class="info">13642256899</td>
					 			<td class="info">3256654@qq.com</td>
					 			<td class="info">
					 				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#upd-UserInfo">
									 修改
									</button>
									<button type="button" class="btn btn-danger btn-sm">
									删除
									</button>
								</td>
							</tr>
							
							
												 		<tr class="">
					 			<td class="info">007</td>
					 			<td class="info">李国杰</td>
					 			<td class="info">19</td>
					 			<td class="info">男</td>
					 			<td class="info">15248856517</td>
					 			<td class="info">415698198@qq.com</td>
					 			<td class="info">
					 				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#upd-UserInfo">
									 修改
									</button>
									<button type="button" class="btn btn-danger btn-sm">
									删除
									</button>
								</td>
							</tr>
							
												 		<tr class="">
					 			<td class="info">008</td>
					 			<td class="info">刘志威</td>
					 			<td class="info">23</td>
					 			<td class="info">男</td>
					 			<td class="info">13666548432</td>
					 			<td class="info">liuzhiwei@163.com</td>
					 			<td class="info">
					 				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#upd-UserInfo">
									 修改
									</button>
									<button type="button" class="btn btn-danger btn-sm">
									删除
									</button>
								</td>
							</tr>
							
							
							
							
							
							
						</table>
						<div id="">
							<ul class="pagination pagination-sm no-margin pull-right">
                            <li><a href="#">&laquo;</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">&raquo;</a></li>
              </ul>
						</div>
					</div>
					
					<!--
                    	作者：offline
                    	时间：2017-11-17
                    	描述：表单
                    -->
                    
                    
                    
                    <div id="employees_info">
                    <div id="form-user">
											<form id="employeesInfo">
												  <div class="form-group">
												    <label>员工名</label>
												    <input type="text" name="name" class="form-control employeesName" id="form-user" placeholder="请输入你的用户名">
												  </div>
												  <div class="form-group">
												    <label>身份证号</label>
												    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="请输入你的身份证号码">
												  </div>
												  
												  <div class="radio">
													  <b>性别</b></br>
													  <label>
													    <input type="radio" name="optionsRadios" id="optionsRadios1" value="男" checked>
													    	男
													  </label>
													   <label>
													    <input type="radio" name="optionsRadios" id="optionsRadios2" value="女">
													   		女
													  </label>
													</div>
													
													<div class="form-group">
												    <label for="form-user">入职日期</label>
												    <input type="date" class="form-control" id="form-user" placeholder="请输入你的用户名">
												  </div>
											 
											  <div class="">
	  											<b>部门</b></br>
												  <select class="form-control">
													  <option>业务部</option>
													  <option>业务1部</option>
													  <option>业务2部</option>
													  <option>业务3部</option>
													  <option>业务4部</option>
													</select>
												</div>
												
												 <div class="">
	  											<b>职位</b></br>
												  <select class="form-control">
													  <option>业务员</option>
													  <option>接案员</option>
													  <option>调度员</option>
													  <option>理赔员</option>
													  <option>核损员</option>
													</select>
												</div>
											  
											  <div class="">
	  											<b>联系地址</b></br>
												  <select class="form-control" id="province" onchange="changeCity();">
													  <option>请选择省/城市</option>
													</select>
												</div>
												 
												<div class="">
	  											<b>职位</b></br>
												  <select class="form-control" id="city">
													  <option>请选择城市/地区</option>
													</select>
												</div>
											  
											  <div class="form-group">
												    <label for="form-user">联系方式</label>
												    <input type="tel" class="form-control" id="form-user" placeholder="请输入你的联系方式">
												  </div>
											  
											  <button type="submit" class="btn btn-primary">提交</button>
											</form>
										</div>
										</div>
					
        </div>
        <!-- /page content -->
        
        <!-- footer content -->
        <footer>
          <div class="pull-right">
            	旭璨保险责任有限公司
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="../../../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../../../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../../../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../../../vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="../../../vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="../../../vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../../../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../../../vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="../../../vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="../../../vendors/Flot/jquery.flot.js"></script>
    <script src="../../../vendors/Flot/jquery.flot.pie.js"></script>
    <script src="../../../vendors/Flot/jquery.flot.time.js"></script>
    <script src="../../../vendors/Flot/jquery.flot.stack.js"></script>
    <script src="../../../vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="../../../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="../../../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="../../../vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="../../../vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="../../../vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="../../../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="../../../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../../../vendors/moment/min/moment.min.js"></script>
    <script src="../../../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="../../../build/js/custom.min.js"></script>
		<script src="../../js/employees.js"></script>
  </body>
</html>