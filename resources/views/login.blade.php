<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title></title>
		<script src="js/mui.min.js"></script>
		<link href="css/mui.min.css" rel="stylesheet" />
		<link rel="stylesheet" type="text/css" href="../css/app.css" />
		<script type="text/javascript" charset="utf-8">
			mui.init();
		</script>
		<style>
			body {
				background-image: url("https://public47.com/wp-content/uploads/2016/03/img_cap05-600x800.jpg");
				/* Full height */
				height: 100vh;
				overflow: hidden;
				/* Center and scale the image nicely */
				background-position: center;
				background-repeat: no-repeat;
				background-size: cover;
			}

			.mui-input-row {
				margin: 10px 0;
				width: 100%;
			}
			
			.mui-input-row input {
				border-bottom: 1px solid white !important;
				width: 80% !important;
			}
			
			.mui-input-row label {
				width: 20%;
			}
			
			::-webkit-input-placeholder {
				/* WebKit, Blink, Edge */
				color: white;
			}
			
			:-moz-placeholder {
				/* Mozilla Firefox 4 to 18 */
				color: white;
				opacity: 1;
			}
			
			::-moz-placeholder {
				/* Mozilla Firefox 19+ */
				color: white;
				opacity: 1;
			}
			
			:-ms-input-placeholder {
				/* Internet Explorer 10-11 */
				color: white;
			}
			
			::-ms-input-placeholder {
				/* Microsoft Edge */
				color: white;
			}
			
			::placeholder {
				/* Most modern browsers support this now. */
				color: white;
			}
		</style>
	</head>

	<body>
		<header class="mui-bar mui-bar-nav" style="background:#EB482F">
			<h1 style="color:white" class="mui-title">Login</h1>
		</header>
		<div class="mui-content mui-text-center" style="background: transparent;color:white;margin:0 50px;">

			<img style="width:100%;margin:60px 0px 30px 0px" src="https://static.wixstatic.com/media/1da006_55b6d2136ae945e58b7b3c614253450b~mv2.png/v1/fill/w_258,h_64,al_c/1da006_55b6d2136ae945e58b7b3c614253450b~mv2.png">

	

			<form action="/auth/login" method="post" accept-charset="UTF-8">
									{!! csrf_field() !!}
						<div class="mui-input-row">
							<label><span class="mui-icon mui-icon-person"></span></label>
							<input type="text" class="mui-input-clear" name="email" placeholder="带清除按钮的输入框">
						</div>
						<div class="mui-input-row">
							<label><span class="mui-icon mui-icon-locked"></span></label>
							<input type="password" class="mui-input-clear" name="password" placeholder="带清除按钮的输入框">
						</div>
						<button  type="submit" style="width:100%;color:white;background:#EB482F;border-color: #EB482F;" class="mui-btn mui-btn-blue">Login</button>
			</form>
			<button type="button" style="width:100%;margin:30px 0px 30px 0px" class="mui-btn mui-btn-blue">Register</button>

			<p></p>
		</div>
	</body>

</html>