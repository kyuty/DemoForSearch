<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>采煤机创新设计知识库系统</title>

<script type="text/javascript">
	$(function() {
		$("#tree").treeview({
			collapsed : true,
			animated : "fast",
			control : "#sidetreecontrol",
			prerendered : true,
			persist : "location"
		});
	})
</script>

<style type="text/css">
.m3 {
	color: #03F;
}

body {
	background-color: #09C;
}

a {
	color: #000;
	text-decoration: none;
	font-size: 12px;
}

a:hover {
	text-decoration: underline;
	color: #F00;
	font-size: 12px;
}

.redColor {
	color: #C40000 !important;
}

nav.top {
	background-color: #f2f2f2;
	padding-top: 3px;
	padding-left: 60px;
	padding-bottom: 3px;
	border-bottom: 1px solid #e7e7e7;
}

nav.top span, nav.top a {
	color: #000;
	margin: 0px 10px 0px 10px;
}

nav.top a:link {
	text-decoration: none;
}

nav.top a:hover {
	color: #F00;
}

img.logo1 {
	position: absolute;
	left: 0px;
	top: 0px;
}

.ziti {
	font-size: 36px;
	font-weight: bold;
}

#apDiv1 #form1 #textfield {
	font-size: 18px;
	font-weight: bold;
	text-align: left;
}

input {
	font-size: 18px;
	font-weight: bold;
	text-align: center;
}

.M1 {
	font-size: 22px;
	font-weight: bold;
	text-align: center;
	color: #000;
}

.m2 {
	font-size: 12px;
	color: #03F;
}

#apDiv1 {
	position: absolute;
	left: 468px;
	top: 100px;
	width: 443px;
	height: 32px;
	z-index: 1;
	background-color: #CCCCCC;
}

#apDiv2 {
	position: absolute;
	left: 59px;
	top: 98px;
	width: 226px;
	height: 208px;
	z-index: 2;
}

#apDiv3 {
	position: absolute;
	left: 464px;
	top: 43px;
	width: 516px;
	height: 55px;
	z-index: 3;
}

#apDiv4 {
	position: absolute;
	left: 20px;
	top: 68px;
	width: 218px;
	height: 54px;
	z-index: 4;
}

#apDiv5 {
	position: absolute;
	left: 319px;
	top: 197px;
	width: 238px;
	height: 227px;
	z-index: 5;
}

#apDiv6 {
	position: absolute;
	left: 683px;
	top: 210px;
	width: 335px;
	height: 150px;
	z-index: 6;
}

#apDiv7 {
	position: absolute;
	left: 311px;
	top: 154px;
	width: 799px;
	height: 782px;
	z-index: 3;
	background-color: #FFFFFF;
}

#apDiv8 {
	position: absolute;
	left: 554px;
	top: 186px;
	width: 356px;
	height: 29px;
	z-index: 5;
}

#apDiv9 {
	position: absolute;
	left: 620px;
	top: 157px;
	width: 220px;
	height: 14px;
	z-index: 5;
	background-color: #CCCCCC;
}

#apDiv10 {
	position: absolute;
	left: 399px;
	top: 948px;
	width: 640px;
	height: 103px;
	z-index: 6;
	text-align: center;
}

#apDiv12 {
	position: absolute;
	left: 504px;
	top: 130px;
	width: 173px;
	height: 11px;
	z-index: 7;
}

#apDiv13 {
	position: absolute;
	left: 556px;
	top: 121px;
	width: 1px;
	height: 36px;
	z-index: 7;
}

#apDiv14 {
	position: absolute;
	left: 350px;
	top: 134px;
	width: 626px;
	height: 19px;
	z-index: 7;
	color: #FFF;
	background-color: #CCCCCC;
}

#apDiv15 {
	position: absolute;
	left: 516px;
	top: 126px;
	width: 364px;
	height: 28px;
	z-index: 7;
	color: #000;
}

#apDiv16 {
	position: absolute;
	left: 890px;
	top: 100px;
	width: 93px;
	height: 27px;
	z-index: 9;
}

#apDiv17 {
	position: absolute;
	left: 487px;
	top: 103px;
	width: 580px;
	height: 27px;
	z-index: 8;
}
</style>
</head>

<body>
	<div id="apDiv2">
		<div id="sidetreecontrol">
			<pre>
				<span class="m3"><a href="./?#">全部折叠</a> | <a href="./?#">全部展开</a> </span>
			</pre>
		</div>
		<ul class="treeview" id="tree">
			<li class="expandable">
				<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
					href="#@">参数检索</a></span>
				<ul style="display: none;">
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="#@">基本参数</a></span>
						<ul style="display: none;">
							<li><span class="m3"><a href="#@">采高</a></span></li>
							<li><span class="m3"><a href="#@">截深</a></span></li>
							<li><span class="m3"><a href="#@">牵引力</a></span></li>
							<li><span class="m3"><a href="#@">生产率</a></span></li>
							<li><span class="m3"><a href="#@">截割速度</a></span></li>
							<li><span class="m3"><a href="#@">牵引速度</a></span></li>
							<li><span class="m3"><a href="#@">煤机重量</a></span></li>
							<li><span class="m3"><a href="#@">煤质硬度 </a></span></li>
							<li><span class="m3"><a href="#@">装机功率</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/index.cfm">工作面倾角</a></span></li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="#@">详细参数</a></span>
						<ul style="display: none;">
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="#@">整机参数</a></span>
								<ul style="display: none;">
									<li><span class="m3"><a href="#@">卧底量</a></span></li>
									<li><span class="m3"><a href="#@">整机尺寸</a></span></li>
									<li><span class="m3"><a href="#@">供电电压</a></span></li>
									<li><span class="m3"><a href="#@">机面高度</a></span></li>
									<li><span class="m3"><a href="#@">过煤高度</a></span></li>
									<li><span class="m3"><a href="#@">过煤通道</a></span></li>
									<li><span class="m3"><a href="#@">煤层厚度</a></span></li>
									<li><span class="m3"><a href="#@">牵引形式</a></span></li>
									<li><span class="m3"><a href="#@">采煤机类型</a></span></li>
									<li><span class="m3"><a href="#@">采煤机型号</a></span></li>
									<li><span class="m3"><a href="#@">最大件重量</a></span></li>
									<li class="last"><span class="m3"><a href="#@">下井最大件尺寸</a></span></li>
								</ul>
							</li>
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="#@">牵引部参数</a></span>
								<ul style="display: none;">
									<li><span class="m3"><a href="#@">牵引电机参数</a></span></li>
									<li class="expandable">
										<div class="hitarea expandable-hitarea"></div> <span
										class="m3"><a href="#@">内牵引直齿传动系统设计参数</a></span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">模数</a></span></li>
											<li><span class="m3"><a href="#@">齿数</a></span></li>
											<li><span class="m3"><a href="#@">齿厚</a></span></li>
											<li><span class="m3"><a href="#@">齿宽</a></span></li>
											<li><span class="m3"><a href="#@">齿高</a></span></li>
											<li><span class="m3"><a href="#@">齿顶高</a></span></li>
											<li><span class="m3"><a href="#@">齿根高</a></span></li>
											<li><span class="m3"><a href="#@">总传动比</a></span></li>
											<li><span class="m3"><a href="#@">齿顶圆直径</a></span></li>
											<li><span class="m3"><a href="#@">齿根圆直径</a></span></li>
											<li><span class="m3"><a href="#@">分度圆直径</a></span></li>
											<li><span class="m3"><a href="#@">标准中心距</a></span></li>
											<li><span class="m3"><a href="#@">端面压力角</a></span></li>
											<li><span class="m3"><a href="#@">齿面接触疲劳强度</a></span></li>
											<li class="last"><span class="m3"><a href="#@">齿根弯曲疲劳强度</a></span></li>
										</ul>
									</li>
									<li class="expandable">
										<div class="hitarea expandable-hitarea"></div> <span
										class="m3"><a href="#@">内牵引行星传动系统设计参数</a></span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">输出转矩</a></span></li>
											<li><span class="m3"><a href="#@">输出转速</a></span></li>
											<li><span class="m3"><a href="#@">邻接条件</a></span></li>
											<li><span class="m3"><a href="#@">同心条件</a></span></li>
											<li><span class="m3"><a href="#@">安装条件</a></span></li>
											<li><span class="m3"><a href="#@">实际模数</a></span></li>
											<li><span class="m3"><a href="#@">未变位中心距</a></span></li>
											<li><span class="m3"><a href="#@">计算中心距变位系数</a></span></li>
											<li><span class="m3"><a href="#@">实际中心距</a></span></li>
											<li><span class="m3"><a href="#@">啮合角</a></span></li>
											<li><span class="m3"><a href="#@">实际中心距变位系数</a></span></li>
											<li><span class="m3"><a href="#@">总体变位系数</a></span></li>
											<li><span class="m3"><a href="#@">齿面接触应力</a></span></li>
											<li class="last"><span class="m3"><a href="#@">许用接触应力</a></span></li>
										</ul>
									</li>
								</ul>
							</li>
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="./?/building_development/index.cfm">截割部参数 </a></span>
								<ul style="display: none;">
									<li><span class="m3"><a
											href="./?/assessment/assessment_faqs.cfm">截割电机参数</a></span></li>
									<li class="expandable">
										<div class="hitarea expandable-hitarea"></div> <span
										class="m3"><a href="./?/building_inspections/index.cfm">截齿参数</a></span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿材料</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<li class="expandable">
										<div class="hitarea expandable-hitarea"></div> <span
										class="m3"><a href="./?/building_inspections/index.cfm">滚筒结构参数</a></span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">滚筒直径</a></span></li>
											<li><span class="m3"><a href="#@">筒毂直径</a></span></li>
											<li><span class="m3"><a href="#@">滚筒宽度</a></span></li>
											<li><span class="m3"><a href="#@">滚筒转速</a></span></li>
											<li><span class="m3"><a href="#@">叶片直径</a></span></li>
											<li><span class="m3"><a href="#@">螺旋升角</a></span></li>
											<li><span class="m3"><a href="#@">螺旋头数</a></span></li>
											<li class="last"><span class="m3"><a href="#@">滚筒转向</a></span></li>
										</ul>
									</li>
									<li class="expandable">
										<div class="hitarea expandable-hitarea"></div> <span
										class="m3"><a href="./?/building_inspections/index.cfm">摇臂整体参数</a></span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">摇臂上摆角</a></span></li>
											<li><span class="m3"><a href="#@">摇臂下摆角</a></span></li>
											<li><span class="m3"><a href="#@">摇臂总摆角</a></span></li>
											<li><span class="m3"><a href="#@">摇臂结构形式</a></span></li>
											<li><span class="m3"><a href="#@">摇臂水平时总长度</a></span></li>
											<li class="last"><span class="m3"><a href="#@">两摇臂回转中心距</a></span></li>
										</ul>
									</li>

									<li class="expandable">
										<div class="hitarea expandable-hitarea"></div> <span
										class="m3"><a href="#@">截割部直齿传动系统设计参数</a></span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">模数</a></span></li>
											<li><span class="m3"><a href="#@">齿数</a></span></li>
											<li><span class="m3"><a href="#@">齿厚</a></span></li>
											<li><span class="m3"><a href="#@">齿宽</a></span></li>
											<li><span class="m3"><a href="#@">齿高</a></span></li>
											<li><span class="m3"><a href="#@">齿顶高</a></span></li>
											<li><span class="m3"><a href="#@">齿根高</a></span></li>
											<li><span class="m3"><a href="#@">总传动比</a></span></li>
											<li><span class="m3"><a href="#@">齿顶圆直径</a></span></li>
											<li><span class="m3"><a href="#@">齿根圆直径</a></span></li>
											<li><span class="m3"><a href="#@">分度圆直径</a></span></li>
											<li><span class="m3"><a href="#@">标准中心距</a></span></li>
											<li><span class="m3"><a href="#@">端面压力角</a></span></li>
											<li><span class="m3"><a href="#@">齿面接触疲劳强度</a></span></li>
											<li class="last"><span class="m3"><a href="#@">齿根弯曲疲劳强度</a></span></li>
										</ul>
									</li>
									<li class="expandable">
										<div class="hitarea expandable-hitarea"></div> <span
										class="m3"><a href="#@">截割部行星传动系统设计参数</a></span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">输出转矩</a></span></li>
											<li><span class="m3"><a href="#@">输出转速</a></span></li>
											<li><span class="m3"><a href="#@">邻接条件</a></span></li>
											<li><span class="m3"><a href="#@">同心条件</a></span></li>
											<li><span class="m3"><a href="#@">安装条件</a></span></li>
											<li><span class="m3"><a href="#@">实际模数</a></span></li>
											<li><span class="m3"><a href="#@">未变位中心距</a></span></li>
											<li><span class="m3"><a href="#@">计算中心距变位系数</a></span></li>
											<li><span class="m3"><a href="#@">实际中心距</a></span></li>
											<li><span class="m3"><a href="#@">啮合角</a></span></li>
											<li><span class="m3"><a href="#@">实际中心距变位系数</a></span></li>
											<li><span class="m3"><a href="#@">总体变位系数</a></span></li>
											<li><span class="m3"><a href="#@">齿面接触应力</a></span></li>
											<li class="last"><span class="m3"><a href="#@">许用接触应力</a></span></li>
										</ul>
									</li>

								</ul>
							</li>
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="./?/community_safety/index.cfm">辅助部分参数</a></span>
								<ul style="display: none;">
									<li><span class="m3"><a
											href="./?/disaster_services/index.cfm">底托架参数</a></span></li>
									<li><span class="m3"><a href="#@">防滑装置参数</a></span></li>
									<li><span class="m3"><a href="#@">电缆拖移装置参数</a></span></li>
									<li class="expandable">
										<div class="hitarea expandable-hitarea"></div> <span
										class="m3"><a href="#@">喷雾冷却系统参数</a></span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">润滑方式</a></span></li>
											<li><span class="m3"><a href="#@">冷却方式</a></span></li>
											<li><span class="m3"><a href="#@">喷雾系统工作压力</a></span></li>
											<li class="last"><span class="m3"><a href="#@">喷雾系统额定工作流量</a></span></li>
										</ul>
									</li>
									<li class="expandable">
										<div class="hitarea expandable-hitarea"></div> <span
										class="m3"><a href="#@">辅助液压系统参数</a></span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">喷雾方式</a></span></li>
											<li><span class="m3"><a href="#@">冷却方式</a></span></li>
											<li><span class="m3"><a href="#@">喷雾系统工作压力</a></span></li>
											<li class="last"><span class="m3"><a href="#@">喷雾系统额定工作流量</a></span></li>
										</ul>
									</li>
									<li class="expandable">
										<div class="hitarea expandable-hitarea"></div> <span
										class="m3"><a href="#@">护板及拆卸工具参数</a></span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">喷雾方式</a></span></li>
											<li><span class="m3"><a href="#@">冷却方式</a></span></li>
											<li><span class="m3"><a href="#@">喷雾泵站参数</a></span></li>
											<li><span class="m3"><a href="#@">喷雾系统工作压力</a></span></li>
											<li class="last"><span class="m3"><a href="#@">喷雾系统额定工作流量</a></span></li>
										</ul>
									</li>
								</ul>
							</li>
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="./?/community_services/index.cfm">中间控制箱参数</a></span>
								<ul style="display: none;">
									<li><span class="m3"><a
											href="./?/directories/community_directory/index.cfm">隔离开关选型</a></span></li>
									<li class="last"><span class="m3"><a
											href="./?/calendars/index.cfm">电流互感器选型</a></span></li>
								</ul>
							</li>
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="./?/recycling_waste/index.cfm">泵站及调高油缸参数</a></span>
								<ul style="display: none;">
									<li><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/new_development.cfm">主泵参数</a></span></li>
									<li><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/new_development.cfm">油缸参数</a></span></li>
									<li><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/call_before_you_dig.cfm">泵站电机参数</a></span></li>
									<li class="last"><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/new_development.cfm">过滤器参数</a></span></li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>
			<li class="expandable">
				<div class="hitarea expandable-hitarea"></div> <span class="m3"><span><a
						href="#@">结构检索</a></span> </span>
				<ul style="display: none;">
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="#@">截割部结构</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a href="#@">摇臂结构</a></span></li>
							<li><span class="m3"><a href="#@">滚筒结构</a></span></li>
							<li><span class="m3"><a href="#@">截割电机结构</a></span></li>
							<li><span class="m3"><a href="#@">提升托架结构</a></span></li>
							<li class="last">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="#@">摇臂齿轮结构箱</a> </span>
								<ul style="display: none;">
									<li><span class="m3"><a href="#@">截割部直齿传动机构</a></span></li>
									<li class="last"><span class="m3"><a href="#@">截割部行星传动机构</a></span></li>


								</ul>
							</li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/assessment/index.cfm">牵引部结构</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a href="#@">牵引电机结构</a></span></li>
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="#@">内牵引结构</a> </span>
								<ul style="display: none;">
									<li><span class="m3"><a href="#@">内牵引直齿传动机构</a></span></li>
									<li class="last"><span class="m3"><a href="#@">外牵引行星传动机构</a></span></li>
								</ul>
							</li>
							<li class="last">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="#@">外牵引结构</a> </span>
								<ul style="display: none;">
									<li><span class="m3"><a href="#@">导向滑靴结构</a></span></li>
									<li class="last"><span class="m3"><a href="#@">外牵引齿轮传动机构</a></span></li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="#@">辅助部件结构</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a href="#@">油路系统</a></span></li>
							<li><span class="m3"><a href="#@">工具及护板</a></span></li>
							<li class="last"><span class="m3"><a href="#@">喷雾冷却系统</a></span></li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="#@">中间控制箱结构</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a href="#@">隔离开关</a></span></li>
							<li class="last"><span class="m3"><a href="#@">电流互感器</a></span></li>
						</ul>
					</li>
					<li class="last">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="#@">泵站及调高油缸结构</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a href="#@">换向阀</a></span></li>
							<li><span class="m3"><a href="#@">冷却器</a></span></li>
							<li><span class="m3"><a href="#@">过滤器</a></span></li>
							<li><span class="m3"><a href="#@">蓄能器</a></span></li>
							<li><span class="m3"><a href="#@">调高油缸</a></span></li>
							<li class="last"><span class="m3"><a href="#@">泵站电机装置</a></span></li>
						</ul>
					</li>
				</ul>
			</li>

			<li class="expandable">
				<div class="hitarea expandable-hitarea"></div> <span class="m3"><span><a
						href="#@">功能检索</a></span> </span>
				<ul style="display: none;">
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="#@">分离</a> </span>
						<ul style="display: none;">
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="#@">滚筒参数</a> </span>
								<ul style="display: none;">
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">滚筒结构参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">滚筒直径</a></span></li>
											<li><span class="m3"><a href="#@">筒毂直径</a></span></li>
											<li><span class="m3"><a href="#@">滚筒宽度</a></span></li>
											<li><span class="m3"><a href="#@">滚筒转速</a></span></li>
											<li><span class="m3"><a href="#@">叶片直径</a></span></li>
											<li><span class="m3"><a href="#@">螺旋升角</a></span></li>
											<li><span class="m3"><a href="#@">螺旋头数</a></span></li>
											<li class="last"><span class="m3"><a href="#@">滚筒转向</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">截齿参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end-->
									</span>
								</ul>
							</li>
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="#@">摇臂齿轮箱参数</a> </span>
								<ul style="display: none;">
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">行星机构参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">滚筒直径</a></span></li>
											<li><span class="m3"><a href="#@">筒毂直径</a></span></li>
											<li><span class="m3"><a href="#@">滚筒宽度</a></span></li>
											<li><span class="m3"><a href="#@">滚筒转速</a></span></li>
											<li><span class="m3"><a href="#@">叶片直径</a></span></li>
											<li><span class="m3"><a href="#@">螺旋升角</a></span></li>
											<li class="last"><span class="m3"><a href="#@">滚筒转向</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">五轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">四轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">第三传动轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">第二传动轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">第一传动轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end-->
									</span>
								</ul>
							</li>
							<li class="last">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="./?/building_development/commercial_industrial_development/index.cfm">截割电机参数</a>
							</span>
								<ul style="display: none;">
									<li><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/call_before_you_dig.cfm">截割功率</a></span></li>
									<li><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/new_development.cfm">截割电机电压</a></span></li>
									<li class="last"><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/new_development.cfm">截割电机型号</a></span></li>
								</ul>
							</li>


						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/assessment/index.cfm">产生</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/assessment/assessment_faqs.cfm">传动箱参数</a></span></li>
							<li><span class="m3"><a
									href="./?/assessment/property_assessment_notices.cfm">牵引电机参数</a></span></li>
							<li class="last"><span class="m3"><a
									href="?http://www.creb.com/" target="_blank">外牵引部件参数</a></span></li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_safety/index.cfm">调控</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/disaster_services/index.cfm">底托架参数</a></span></li>
							<li><span class="m3"><a href="#@">防滑装置参数</a></span></li>
							<li><span class="m3"><a href="#@">电缆拖移装置参数</a></span></li>
							<li><span class="m3"><a href="#@">护板工具系统参数</a></span></li>
							<li class="expandable lastExpandable">
								<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
								<span class="m3"><a href="#@">喷雾冷却系统参数</a> </span>
								<ul style="display: none;">
									<li><span class="m3"><a href="#@">喷雾方式</a></span></li>
									<li><span class="m3"><a href="#@">冷却方式</a></span></li>
									<li><span class="m3"><a href="#@">喷雾系统工作压力</a></span></li>
									<li class="last"><span class="m3"><a href="#@">喷雾系统额定工作流量</a></span></li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_services/index.cfm">稳定</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/directories/community_directory/index.cfm">Community
										Directory</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/calendars/index.cfm">Community Calendar</a></span></li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_services/index.cfm">移动</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/directories/community_directory/index.cfm">Community
										Directory</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/calendars/index.cfm">Community Calendar</a></span></li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_services/index.cfm">检测</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/directories/community_directory/index.cfm">Community
										Directory</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/calendars/index.cfm">Community Calendar</a></span></li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_services/index.cfm">结合</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/directories/community_directory/index.cfm">Community
										Directory</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/calendars/index.cfm">Community Calendar</a></span></li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_services/index.cfm">积累</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/directories/community_directory/index.cfm">Community
										Directory</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/calendars/index.cfm">Community Calendar</a></span></li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_services/index.cfm">输出</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/directories/community_directory/index.cfm">Community
										Directory</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/calendars/index.cfm">Community Calendar</a></span></li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_services/index.cfm">调控</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/directories/community_directory/index.cfm">Community
										Directory</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/calendars/index.cfm">Community Calendar</a></span></li>
						</ul>
					</li>
					<li class="last">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/recycling_waste/index.cfm">吸收</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/building_development/commercial_industrial_development/call_before_you_dig.cfm">泵站电机功率</a></span></li>
							<li><span class="m3"><a
									href="./?/building_development/commercial_industrial_development/new_development.cfm">泵站电机电压</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/building_development/commercial_industrial_development/new_development.cfm">泵站电机型号</a></span></li>
						</ul>
					</li>
				</ul>
			<li class="expandable">
				<div class="hitarea expandable-hitarea"></div> <span class="m3"><span><a
						href="./?/index.cfm">原理检索</a></span> </span>
				<ul style="display: none;">
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/building_development/index.cfm">发明原理</a> </span>
						<ul style="display: none;">
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="./?/building_inspections/index.cfm">滚筒参数</a> </span>
								<ul style="display: none;">
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">滚筒结构参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">滚筒直径</a></span></li>
											<li><span class="m3"><a href="#@">筒毂直径</a></span></li>
											<li><span class="m3"><a href="#@">滚筒宽度</a></span></li>
											<li><span class="m3"><a href="#@">滚筒转速</a></span></li>
											<li><span class="m3"><a href="#@">叶片直径</a></span></li>
											<li><span class="m3"><a href="#@">螺旋升角</a></span></li>
											<li><span class="m3"><a href="#@">螺旋头数</a></span></li>
											<li class="last"><span class="m3"><a href="#@">滚筒转向</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">截齿参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end-->
									</span>
								</ul>
							</li>
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="#@">摇臂齿轮箱参数</a> </span>
								<ul style="display: none;">
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">行星机构参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">滚筒直径</a></span></li>
											<li><span class="m3"><a href="#@">筒毂直径</a></span></li>
											<li><span class="m3"><a href="#@">滚筒宽度</a></span></li>
											<li><span class="m3"><a href="#@">滚筒转速</a></span></li>
											<li><span class="m3"><a href="#@">叶片直径</a></span></li>
											<li><span class="m3"><a href="#@">螺旋升角</a></span></li>
											<li class="last"><span class="m3"><a href="#@">滚筒转向</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">五轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">四轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">第三传动轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">第二传动轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">第一传动轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end-->
									</span>
								</ul>
							</li>
							<li class="last">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="./?/building_development/commercial_industrial_development/index.cfm">截割电机参数</a>
							</span>
								<ul style="display: none;">
									<li><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/call_before_you_dig.cfm">截割功率</a></span></li>
									<li><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/new_development.cfm">截割电机电压</a></span></li>
									<li class="last"><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/new_development.cfm">截割电机型号</a></span></li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="last">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/assessment/index.cfm">设计原理</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/assessment/assessment_faqs.cfm">传动箱参数</a></span></li>
							<li><span class="m3"><a
									href="./?/assessment/property_assessment_notices.cfm">牵引电机参数</a></span></li>
							<li class="last"><span class="m3"><a
									href="?http://www.creb.com/" target="_blank">外牵引部件参数</a></span></li>
						</ul>
					</li>

				</ul>
			<li class="expandable">
				<div class="hitarea expandable-hitarea"></div> <span class="m3"><span><a
						href="./?/index.cfm">效应检索</a></span> </span>
				<ul style="display: none;">
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/building_development/index.cfm">物理效应</a> </span>
						<ul style="display: none;">
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="./?/building_inspections/index.cfm">滚筒参数</a> </span>
								<ul style="display: none;">
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">滚筒结构参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">滚筒直径</a></span></li>
											<li><span class="m3"><a href="#@">筒毂直径</a></span></li>
											<li><span class="m3"><a href="#@">滚筒宽度</a></span></li>
											<li><span class="m3"><a href="#@">滚筒转速</a></span></li>
											<li><span class="m3"><a href="#@">叶片直径</a></span></li>
											<li><span class="m3"><a href="#@">螺旋升角</a></span></li>
											<li><span class="m3"><a href="#@">螺旋头数</a></span></li>
											<li class="last"><span class="m3"><a href="#@">滚筒转向</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">截齿参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end-->
									</span>
								</ul>
							</li>
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="#@">摇臂齿轮箱参数</a> </span>
								<ul style="display: none;">
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">行星机构参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">滚筒直径</a></span></li>
											<li><span class="m3"><a href="#@">筒毂直径</a></span></li>
											<li><span class="m3"><a href="#@">滚筒宽度</a></span></li>
											<li><span class="m3"><a href="#@">滚筒转速</a></span></li>
											<li><span class="m3"><a href="#@">叶片直径</a></span></li>
											<li><span class="m3"><a href="#@">螺旋升角</a></span></li>
											<li class="last"><span class="m3"><a href="#@">滚筒转向</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">五轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">四轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">第三传动轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">第二传动轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->
									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">第一传动轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end-->
									</span>
								</ul>
							</li>
							<li class="last">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="./?/building_development/commercial_industrial_development/index.cfm">截割电机参数</a>
							</span>
								<ul style="display: none;">
									<li><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/call_before_you_dig.cfm">截割功率</a></span></li>
									<li><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/new_development.cfm">截割电机电压</a></span></li>
									<li class="last"><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/new_development.cfm">截割电机型号</a></span></li>
								</ul>
							</li>


						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/assessment/index.cfm">几何效应</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/assessment/assessment_faqs.cfm">传动箱参数</a></span></li>
							<li><span class="m3"><a
									href="./?/assessment/property_assessment_notices.cfm">牵引电机参数</a></span></li>
							<li class="last"><span class="m3"><a
									href="?http://www.creb.com/" target="_blank">外牵引部件参数</a></span></li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_safety/index.cfm">化学效应</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/disaster_services/index.cfm">底托架参数</a></span></li>
							<li><span class="m3"><a href="#@">防滑装置参数</a></span></li>
							<li><span class="m3"><a href="#@">电缆拖移装置参数</a></span></li>
							<li><span class="m3"><a href="#@">护板工具系统参数</a></span></li>
							<li class="expandable lastExpandable">
								<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
								<span class="m3"><a href="#@">喷雾冷却系统参数</a> </span>
								<ul style="display: none;">
									<li><span class="m3"><a href="#@">喷雾方式</a></span></li>
									<li><span class="m3"><a href="#@">冷却方式</a></span></li>
									<li><span class="m3"><a href="#@">喷雾系统工作压力</a></span></li>
									<li class="last"><span class="m3"><a href="#@">喷雾系统额定工作流量</a></span></li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_services/index.cfm">生物效应</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/directories/community_directory/index.cfm">Community
										Directory</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/calendars/index.cfm">Community Calendar</a></span></li>
						</ul>
					</li>
				</ul>
			<li class="last">
				<div class="hitarea expandable-hitarea"></div> <span class="m3"><span><a
						href="./?/index.cfm">领域检索</a></span> </span>
				<ul style="display: none;">
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="#@">A部人类生活必需</a> </span>
						<ul style="display: none;">
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="./?/building_inspections/index.cfm">滚筒参数</a> </span>
								<ul style="display: none;">
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">滚筒结构参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">滚筒直径</a></span></li>
											<li><span class="m3"><a href="#@">筒毂直径</a></span></li>
											<li><span class="m3"><a href="#@">滚筒宽度</a></span></li>
											<li><span class="m3"><a href="#@">滚筒转速</a></span></li>
											<li><span class="m3"><a href="#@">叶片直径</a></span></li>
											<li><span class="m3"><a href="#@">螺旋升角</a></span></li>
											<li><span class="m3"><a href="#@">螺旋头数</a></span></li>
											<li class="last"><span class="m3"><a href="#@">滚筒转向</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--增加子节点-->

									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">截齿参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end-->

									</span>
								</ul>
							</li>
							<li class="expandable">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="#@">摇臂齿轮箱参数</a> </span>
								<ul style="display: none;">
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">行星机构参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">滚筒直径</a></span></li>
											<li><span class="m3"><a href="#@">筒毂直径</a></span></li>
											<li><span class="m3"><a href="#@">滚筒宽度</a></span></li>
											<li><span class="m3"><a href="#@">滚筒转速</a></span></li>
											<li><span class="m3"><a href="#@">叶片直径</a></span></li>
											<li><span class="m3"><a href="#@">螺旋升角</a></span></li>
											<li class="last"><span class="m3"><a href="#@">滚筒转向</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--增加子节点-->

									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">五轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->

									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">四轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->

									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">第三传动轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->

									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">第二传动轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end--> <!--增加子节点-->

									</span>
									<li class="expandable lastExpandable">
										<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
										<span class="m3"><a href="#@">第一传动轴参数</a> </span>
										<ul style="display: none;">
											<li><span class="m3"><a href="#@">截齿类型</a></span></li>
											<li><span class="m3"><a href="#@">截齿配置</a></span></li>
											<li class="last"><span class="m3"><a href="#@">截齿伸出长度</a></span></li>
										</ul>
									</li>
									<span class="m3"> <!--end-->

									</span>
								</ul>
							</li>
							<li class="last">
								<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
									href="./?/building_development/commercial_industrial_development/index.cfm">截割电机参数</a>
							</span>
								<ul style="display: none;">
									<li><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/call_before_you_dig.cfm">截割功率</a></span></li>
									<li><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/new_development.cfm">截割电机电压</a></span></li>
									<li class="last"><span class="m3"><a
											href="./?/building_development/commercial_industrial_development/new_development.cfm">截割电机型号</a></span></li>
								</ul>
							</li>


						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/assessment/index.cfm">B部作业/运输</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/assessment/assessment_faqs.cfm">传动箱参数</a></span></li>
							<li><span class="m3"><a
									href="./?/assessment/property_assessment_notices.cfm">牵引电机参数</a></span></li>
							<li class="last"><span class="m3"><a
									href="?http://www.creb.com/" target="_blank">外牵引部件参数</a></span></li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_safety/index.cfm">C部化学/冶金</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/disaster_services/index.cfm">底托架参数</a></span></li>
							<li><span class="m3"><a href="#@">防滑装置参数</a></span></li>
							<li><span class="m3"><a href="#@">电缆拖移装置参数</a></span></li>
							<li><span class="m3"><a href="#@">护板工具系统参数</a></span></li>
							<li class="expandable lastExpandable">
								<div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
								<span class="m3"><a href="#@">喷雾冷却系统参数</a> </span>
								<ul style="display: none;">
									<li><span class="m3"><a href="#@">喷雾方式</a></span></li>
									<li><span class="m3"><a href="#@">冷却方式</a></span></li>
									<li><span class="m3"><a href="#@">喷雾系统工作压力</a></span></li>
									<li class="last"><span class="m3"><a href="#@">喷雾系统额定工作流量</a></span></li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_services/index.cfm">D部纺织/造纸</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/directories/community_directory/index.cfm">Community
										Directory</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/calendars/index.cfm">Community Calendar</a></span></li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_services/index.cfm">E部固定建筑物</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/directories/community_directory/index.cfm">Community
										Directory</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/calendars/index.cfm">Community Calendar</a></span></li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_services/index.cfm">F部机械工程/照明/加热/武器/爆破</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/directories/community_directory/index.cfm">Community
										Directory</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/calendars/index.cfm">Community Calendar</a></span></li>
						</ul>
					</li>
					<li class="expandable">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/community_services/index.cfm">G部物理</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/directories/community_directory/index.cfm">Community
										Directory</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/calendars/index.cfm">Community Calendar</a></span></li>
						</ul>
					</li>
					<li class="last">
						<div class="hitarea expandable-hitarea"></div> <span class="m3"><a
							href="./?/recycling_waste/index.cfm">H部电学</a> </span>
						<ul style="display: none;">
							<li><span class="m3"><a
									href="./?/building_development/commercial_industrial_development/call_before_you_dig.cfm">泵站电机功率</a></span></li>
							<li><span class="m3"><a
									href="./?/building_development/commercial_industrial_development/new_development.cfm">泵站电机电压</a></span></li>
							<li class="last"><span class="m3"><a
									href="./?/building_development/commercial_industrial_development/new_development.cfm">泵站电机型号</a></span></li>
						</ul>
					</li>
				</ul>

			</li>
		</ul>
	</div>
	<div id="apDiv3">
		<span class="ziti"> 采煤机创新设计知识库系统</span>
	</div>
	<div id="apDiv7">
		<tr>
			<td>${result}</td>
		</tr>
		<br />

		<table>
			<tr>
				<nav>
				<ul class="pager">
					<a href="?start=0">首 页</a>&nbsp;&nbsp;
					<a href="?start=${pre}">上一页</a>&nbsp;&nbsp;
					<a href="?start=${next}">下一页</a>&nbsp;&nbsp;
					<a href="?start=${last}">末 页</a>
				</ul>
				</nav>
			</tr>
		</table>
	</div>
	<div id="apDiv10">
		<p>
			主办单位：太原理工大学 技术支持：太原理工大学现代设计网上合作研究中心，山西省矿山机械CAE工程技术研究中心<br />
		</p>
		<p>联系方式: 0351-6010414 Email: mdesign@tyut.edu.cn;</p>
		<p>&nbsp;</p>
	</div>
	<div id="apDiv17">
		<form action="search_page" method="post">
			<input type="text" name="name_for_search">&nbsp;<input
				type="text" name="a" size="2">-<input type="text" name="b"
				size="2">&nbsp;<input type="submit" value="语义检索">
		</form>
	</div>
	<!-- 
	<div id="apDiv16">
		<form action="search_page" method="post">
			<input type="submit" value="语义检索">
		</form>
	</div>
	-->
	<a href="#nowhere"><img class="logo1" src="images/logo1.jpg"
		id="logo1"> </a>
	<nav class="top "> <a href="#@"> <span
		class="glyphicon glyphicon-home redColor"></span> 系统首页
	</a> |<a href="#nowhere">平台介绍</a> | <span>欢迎来采煤机创新设计知识库</span> <a
		href="login.jsp">请登录</a>| <a href="regist.jsp">免费注册</a> </nav>
</body>
</html>