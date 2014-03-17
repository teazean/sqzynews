<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<style type="text/css" media="all">
.liehuo_d1 {
	width: 300px;
	height: auto;
	overflow: hidden;
	border: #666666 2px solid;
	background-color: #000000;
	position: relative;
}

.loading {
	width: 259px;
	border: #666666 2px solid;
	background-color: #000000;
	color: #FFCC00;
	font-size: 12px;
	height: 179px;
	text-align: center;
	padding-top: 30px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}

.liehuo_d2 {
	width: 100%;
	height: 260px;
	overflow: hidden;
}

.num_list {
	position: absolute;
	width: 100%;
	left: 0px;
	bottom: -1px;
	background-color: #000000;
	color: #FFFFFF;
	font-size: 12px;
	padding: 4px 0px;
	height: 20px;
	overflow: hidden;
}

.num_list span {
	height: 16px;
	padding-left: 6px;
}

img {
	border: 0px;
}

ul {
	display: none;
}

.button {
	position: absolute;
	z-index: 1000;
	right: 0px;
	bottom: 2px;
	font-size: 13px;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}

.liehuo_b1,.liehuo_b2 {
	background-color: #666666;
	display: block;
	float: left;
	padding: 2px 6px;
	margin-right: 3px;
	color: #FFFFFF;
	text-decoration: none;
	cursor: pointer;
}

.liehuo_2 {
	color: #FFCC33;
	background-color: #FF6633;
}

#fade_focus {
	top: -3px;
	left: 0px;
}

body /*图片与边框间距为0 边框之间间距为0*/
	/*下面是定义id 和 class*/        
    #div1 {
	margin: 0 auto;
	overflow: hidden;
	width: 960px;
	height: 200px;
}  /*id 总的div长度定义*/
#div1 .indemo {
	float: left;
	width: 1000%;
}  /*class*/
#div11,#div12 {
	float: left;
}  /*id*/
#div11 a,#div12 a {
	display: block;
	float: left;
	margin-left: 10px;
}  /*定义<a>标签的属性 定义了图片间距*/
#div11 img,#div12 img {
	width: 160px;
	height: 180px;
}  /*定义div1和div2内部图片大小*/
#main {
	width: 1000px;
	margin: 0px;
}

#leader {
	height: 344px;
	background-color: #DFDFDF;
	width: 275px;
	float: left;
	margin-top: 0px;
	margin-right: 17;
}

#news {
	height: 297px;
	width: 395px;
	border-right: #E6D8BD 2px solid;
	border-top: #E6D8BD 2px solid;
	margin-top: 8px;
	margin-left: 20px;
	float: left;
}

#friend {
	width: 275px;
	height: 326px;
	margin-left: 15px;
	margin-top: 10px;
	padding-left: 18px;
	padding-top: 10px;
	float: left;
	background-color: #DBDBDB;
}

#latest {
	width: 278px;
	height: 270px;
	margin-left: 8px;
	margin-top: 22px;
	border: 2px #C6C6C6 solid;
	float: left;
}

#corporate {
	width: 399px;
	height: 245px;
	margin-left: 8px;
	margin-top: 20px;
	float: left;
}

#culture {
	width: 271px;
	height: 416px;
	margin-top: 15px;
	margin-right: 20px;
	float: right;
	background-color: #EEEEEE;
}

#history {
	width: 688px;
	height: 137px;
	margin-left: 8px;
	margin-top: 15px;
	float: right;
}
</style>

		<script language="javascript" type="text/javascript">
    var s = function() {
        var interv = 2000; //切换间隔时间
        var interv2 = 10; //切换速速
        var opac1 = 80; //文字背景的透明度
        var source = "fade_focus" //焦点轮换图片容器的id名称
        //获取对象
        function getTag(tag, obj) { if (obj == null) { return document.getElementsByTagName(tag) } else { return obj.getElementsByTagName(tag) } }
        function getid(id) { return document.getElementById(id) };
        var opac = 0, j = 0, t = 63, num, scton = 0, timer, timer2, timer3; var id = getid(source); id.removeChild(getTag("div", id)[0]); var li = getTag("li", id); var div = document.createElement("div"); var title = document.createElement("div"); var span = document.createElement("span"); var button = document.createElement("div"); button.className = "button"; for (var i = 0; i < li.length; i++) { var a = document.createElement("a"); a.innerHTML = i + 1; a.onclick = function() { clearTimeout(timer); clearTimeout(timer2); clearTimeout(timer3); j = parseInt(this.innerHTML) - 1; scton = 0; t = 63; opac = 0; fadeon(); }; a.className = "liehuo_b1"; a.onmouseover = function() { this.className = "liehuo_b2" }; a.onmouseout = function() { this.className = "liehuo_b1"; sc(j) }; button.appendChild(a); }
        //控制图层透明度
        function alpha(obj, n) { if (document.all) { obj.style.filter = "alpha(opacity=" + n + ")"; } else { obj.style.opacity = (n / 100); } }
        //控制焦点按钮
        function sc(n) { for (var i = 0; i < li.length; i++) { button.childNodes[i].className = "liehuo_b1" }; button.childNodes[n].className = "liehuo_b2"; }
        title.className = "num_list"; title.appendChild(span); alpha(title, opac1); id.className = "liehuo_d1"; div.className = "liehuo_d2"; id.appendChild(div); id.appendChild(title); id.appendChild(button);
        //渐显
        var fadeon = function() { opac += 5; div.innerHTML = li[j].innerHTML; span.innerHTML = getTag("img", li[j])[0].alt; alpha(div, opac); if (scton == 0) { sc(j); num = -2; scrolltxt(); scton = 1 }; if (opac < 100) { timer = setTimeout(fadeon, interv2) } else { timer2 = setTimeout(fadeout, interv); }; }
        //渐隐
        var fadeout = function() { opac -= 5; div.innerHTML = li[j].innerHTML; alpha(div, opac); if (scton == 0) { num = 2; scrolltxt(); scton = 1 }; if (opac > 0) { timer = setTimeout(fadeout, interv2) } else { if (j < li.length - 1) { j++ } else { j = 0 ;}; fadeon(); }; }
        //滚动文字
        var scrolltxt = function() { t += num; span.style.marginTop = t + "px"; if (num < 0 && t > 3) { timer3 = setTimeout(scrolltxt, interv2) } else if (num > 0 && t < 62) { timer3 = setTimeout(scrolltxt, interv2) } else { scton = 0 } };
        fadeon();
    }
    //初始化
    window.onload = s;
</script>
		<script type="text/javascript">

    var tabLeft = document.getElementById("div1");
    var tab1 = document.getElementById("div11");
    var tab2 = document.getElementById("div12");
    tab2.innerHTML = tab1.innerHTML; //设置div1和div2都相同的html格式

    function Marquee1() {
        if (tabLeft.scrollLeft >= tab2.offsetWidth)
            tabLeft.scrollLeft -= tab1.offsetWidth;
        else {
            tabLeft.scrollLeft += 1;
        }
    } //该函数设置了图片的移动方向
    var speed = 10;
    var MyMar = setInterval(Marquee1, speed); //设置图片移动的速度
    tabLeft.onmouseover = function() {
        clearInterval(MyMar);
    };  //鼠标移到图上，静止
    tabLeft.onmouseout = function() { 
    	MyMar = setInterval(Marquee1, speed) ;
    	}; //鼠标移除，图片继续动起来
</script>
	</head>
	<body>
		>
		<div id="main">
			<div id="friend">
				<div
					style="width: 246px; height: 43px; padding-top: 10px; padding-left: 0px;">
					<img src="image/友情链接.jpg" alt="图片不存在" style="width: 246px" />
				</div>
				<div id="lp"
					style="text-align: center; width: 244px; height: 246px; background-color: White;"
					runat="server"></div>
			</div>
			<div id="latest">
				<div style="height: 44px; width: 273px; margin-left: 2px;">
					<img src="image/最新报道.jpg" alt="图片不存在" />
				</div>
				<div
					style="margin-top: 2px; width: 274px; height: 219px; line-height: 24px;">
					<asp:Label ID="Label2" runat="server"></asp:Label>
				</div>
			</div>
			<div id="corporate">
				<div style="width: 399px; height: 24px; background-color: #E3E3E5;">
					<img src="image/合作项目.jpg" alt="图片不存在" />

				</div>
			</div>
			<div id="culture">
				<div style="margin-left: 5px; width: 262px;">
					<img src="image/文化展厅.jpg" alt="图片不存在" />
				</div>
				<div id="fade_focus"
					style="position: relative; top: 0px; left: 6px; width: 261px; margin-top: 5px; height: 240px;">
					<div class="loading">
						Loading...
						<br />
						<img src="image/Slide.gif" width="100" height="100" alt="" />
					</div>
					<ul>
						<li>
							<asp:HyperLink ID="HyperLink1" runat="server">
								<asp:Image ID="Image14" runat="server" AlternateText="图片暂时不存在"
									width="270" height="260" />
							</asp:HyperLink>
						</li>
						<li>
							<asp:HyperLink ID="HyperLink2" runat="server">
								<asp:Image ID="Image15" runat="server" AlternateText="图片暂时不存在"
									width="270" height="260" />
							</asp:HyperLink>
						</li>
						<li>
							<asp:HyperLink ID="HyperLink3" runat="server">
								<asp:Image ID="Image16" runat="server" AlternateText="图片暂时不存在"
									width="270" height="260" />
							</asp:HyperLink>
						</li>
						<li>
							<asp:HyperLink ID="HyperLink4" runat="server">
								<asp:Image ID="Image17" runat="server" AlternateText="图片暂时不存在"
									width="270" height="260" />
							</asp:HyperLink>
						</li>

					</ul>
				</div>
			</div>
			<div id="history">
				<div>
					<img src="image/黄埔史话.jpg" alt="图片无法打开" />
				</div>
				<div
					style="margin-top: 10px; border: #E6E6E6 2px solid; padding-top: 5px;">
					<span
						style="font-family: 宋体; font-size: large; color: #000000; line-height: 24px;">&nbsp;&nbsp;&nbsp;&nbsp;
						上世纪，日本帝国主义大举入侵中国，中华民族经历了一场空前的劫难。一夜间，炮火硝烟遮蔽了卢沟的晓月，日寇的
						铁蹄肆意践踏着祖国的河山。民族存亡的危难时刻，中国共产党高擎起抗日民族统一战线大旗 <span
						style="font-family: 华文新魏; font-size: large; color: #000000; font-style: italic;">…</span>
					</span>
					<span style="color: #3366CC; text-decoration: underline;"> <a
						href="preface.aspx" style="text-decoration: none" target="_blank"><span
							style="font-size: 20px; font-family: 华文楷体">(查看全文)</span> </a>
				</div>

			</div>
			<div style="margin-top: 15px;">
				<div>
					<div id="div1">
						<div class="indemo">


							<div id="div11">
								<asp:HyperLink ID="HyperLink5" runat="server">
									<asp:Image ID="Image1" runat="server" AlternateText="图片暂时不存在"
										BorderColor="#993300" BorderStyle="Solid" BorderWidth="1px" />
								</asp:HyperLink>
								<asp:HyperLink ID="HyperLink6" runat="server">
									<asp:Image ID="Image2" runat="server" AlternateText="图片暂时不存在"
										BorderColor="#993300" BorderStyle="Solid" BorderWidth="1px" />
								</asp:HyperLink>
								<asp:HyperLink ID="HyperLink7" runat="server">
									<asp:Image ID="Image3" runat="server" AlternateText="图片暂时不存在"
										BorderColor="#993300" BorderStyle="Solid" BorderWidth="1px" />
								</asp:HyperLink>
								<asp:HyperLink ID="HyperLink8" runat="server">
									<asp:Image ID="Image4" runat="server" AlternateText="图片暂时不存在"
										BorderColor="#993300" BorderStyle="Solid" BorderWidth="1px" />
								</asp:HyperLink>
								<asp:HyperLink ID="HyperLink9" runat="server">
									<asp:Image ID="Image5" runat="server" AlternateText="图片暂时不存在"
										BorderColor="#993300" BorderStyle="Solid" BorderWidth="1px" />
								</asp:HyperLink>
								<asp:HyperLink ID="HyperLink10" runat="server">
									<asp:Image ID="Image6" runat="server" AlternateText="图片暂时不存在"
										BorderColor="#993300" BorderStyle="Solid" BorderWidth="1px" />
								</asp:HyperLink>
								<asp:HyperLink ID="HyperLink11" runat="server">
									<asp:Image ID="Image7" runat="server" AlternateText="图片暂时不存在"
										BorderColor="#993300" BorderStyle="Solid" BorderWidth="1px" />
								</asp:HyperLink>
								<asp:HyperLink ID="HyperLink12" runat="server">
									<asp:Image ID="Image8" runat="server" AlternateText="图片暂时不存在"
										BorderColor="#993300" BorderStyle="Solid" BorderWidth="1px" />
								</asp:HyperLink>
								<asp:HyperLink ID="HyperLink13" runat="server">
									<asp:Image ID="Image9" runat="server" AlternateText="图片暂时不存在"
										BorderColor="#993300" BorderStyle="Solid" BorderWidth="1px" />
								</asp:HyperLink>
								<asp:HyperLink ID="HyperLink14" runat="server">
									<asp:Image ID="Image10" runat="server" AlternateText="图片暂时不存在"
										BorderColor="#993300" BorderStyle="Solid" BorderWidth="1px" />
								</asp:HyperLink>


							</div>

							<div id="div12"></div>

						</div>
					</div>
				</div>


			</div>




		</div>







		<hr style="border-style: groove; border-color: #CC9900" />
	</body>
</html>

