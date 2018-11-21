<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>Hello MUI</title>
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<!--标准mui.css-->
		<link rel="stylesheet" href="../css/mui.min.css">
		<!--App自定义的css-->
		<link rel="stylesheet" type="text/css" href="../css/app.css" />
		<style>
			.title {
				margin: 20px 15px 10px;
				color: #6d6d72;
				font-size: 15px;
			}
			
			.oa-contact-cell.mui-table .mui-table-cell {
				padding: 11px 0;
				vertical-align: middle;
			}
			
			.oa-contact-cell {
				position: relative;
				margin: -11px 0;
			}
			
			.oa-contact-avatar {
				width: 75px;
			}
			
			.oa-contact-avatar img {
				border-radius: 50%;
			}
			
			.oa-contact-content {
				width: 100%;
			}
			
			.oa-contact-name {
				margin-right: 20px;
			}
			
			.oa-contact-name,
			oa-contact-position {
				float: left;
			}
		</style>

	</head>

	<body>
		<header class="mui-bar mui-bar-nav">

			<h1 class="mui-title">设置</h1>
		</header>
		<nav class="mui-bar mui-bar-tab">
			<a class="mui-tab-item" href="/services">
				<span class="mui-icon mui-icon-home"></span>
				<span class="mui-tab-label">预约服务</span>
			</a>
			<a class="mui-tab-item" href="/orders">
				<span class="mui-icon mui-icon-email"><span class="mui-badge">9</span></span>
				<span class="mui-tab-label">订单</span>
			</a>
			<a class="mui-tab-item mui-active" href="/settings">
				<span class="mui-icon mui-icon-contact"></span>
				<span class="mui-tab-label">设置</span>
			</a>
		</nav>
		<div class="mui-content">

			<div id="tabbar-with-map" class="">
				<ul class="mui-table-view">
					<li class="mui-table-view-cell">
						<a class="mui-navigate-right">
							新消息通知
						</a>
					</li>
					<li class="mui-table-view-cell">
						<a class="mui-navigate-right">
							隐私
						</a>
					</li>
					<li class="mui-table-view-cell">
						<a class="mui-navigate-right">
							通用
						</a>
					</li>
				</ul>
				<ul class="mui-table-view" style="margin-top: 25px;">
					<li class="mui-table-view-cell">
						<a class="mui-navigate-right">
							关于mui
						</a>
					</li>
				</ul>
				<ul class="mui-table-view" style="margin-top: 25px;">
					<li class="mui-table-view-cell">
						<a style="text-align: center;color: #FF3B30;" href="/logout">
							退出登录
						</a>
					</li>
				</ul>
			</div>
		</div>
	</body>
	<script src="../js/mui.min.js"></script>
	<script src="../js/app.js"></script>
	<script>
		mui.init({
			swipeBack: true //启用右滑关闭功能
		});
	</script>
	<script>
		mui.init({
			swipeBack: true //启用右滑关闭功能
		});
	</script>
  <script type="text/javascript">
  
  @if(isset($error))
    mui.toast("{{$error}}");
  @endif

  @if(Session::has('error'))
    mui.toast("{{Session::get('error')}}");
  @endif

  @if(Session::has('message'))
    mui.toast("{{Session::get('message')}}");
  @endif

  </script>
</html>