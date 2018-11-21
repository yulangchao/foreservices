<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>Hello MUI</title>
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">

		<link rel="stylesheet" href="../css/mui.min.css">
		<style type="text/css">
			.mui-content>.mui-table-view:first-child {
				margin-top: -1px;
			}
		</style>
	</head>

	<body>
		<header class="mui-bar mui-bar-nav">
		    <a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
		    <h1 class="mui-title">Select Cleaner</h1>
		</header>
		<!--下拉刷新容器-->
		<div id="pullrefresh" class="mui-content mui-scroll-wrapper">
			<div class="mui-scroll">
				<!--数据列表-->
				<ul class="mui-table-view mui-table-view-chevron"></ul>
			</div>
		</div>
		<script src="../js/mui.min.js" type="text/javascript" charset="utf-8"></script>
		<script>
			
			mui.init({
				pullRefresh: {
					container: '#pullrefresh',
					up: {
						auto:true,
						contentrefresh: 'Loading...',
						callback: pullupRefresh
					}
				}
			});
			var count = 0;
			function pullupRefresh() {
				setTimeout(function() {
					 //参数为true代表没有更多数据了。
					var table = document.body.querySelector('.mui-table-view');
					var cells = document.body.querySelectorAll('.mui-table-view-cell');
                    var newCount = cells.length>0?5:20;//首次加载20条，满屏
                    mui.get('http://localhost:8000/getMore',{
				
                        },function(data){
                            for (var i = cells.length, len = i + newCount; i < len; i++) {
                                var li = document.createElement('li');
                                li.className = 'mui-table-view-cell';
                                li.innerHTML = '<a class="mui-navigate-right">Item ' + (i + 1) + '</a>';
                                table.appendChild(li);
                            }
                            mui('#pullrefresh').pullRefresh().endPullupToRefresh();
                        },'json'
                    );

				}, 0);
			}
			/**
			 * 下拉刷新具体业务实现
			 */
			function pulldownRefresh() {
				setTimeout(function() {
					mui('#pullrefresh').pullRefresh().endPulldownToRefresh();
				}, 1500);
			}
			


		</script>
	</body>

</html>