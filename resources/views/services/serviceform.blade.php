<!DOCTYPE html>
<html class="ui-page-login">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title></title>
		<link href="css/mui.min.css" rel="stylesheet" />
		<link href="css/style.css" rel="stylesheet" />
		<link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.2/weui.min.css">
		<script type="text/javascript" src="https://res.wx.qq.com/open/libs/weuijs/1.1.3/weui.min.js"></script>
		<script type="text/javascript">
			weui.alert('alert');
		</script>
		<style>
			input,
			select {
				height: auto !important;
				margin: 0 !important;
				border: none !important;
				padding: 1px !important;
			}
			
			.mui-numbox input {
				height: 33px !important
			}
		</style>

	</head>

	<body>
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
			<h1 class="mui-title">{{$type}}</h1>
		</header>
		<div class="mui-content">
			<form action="/createOrder" id="orderform" method="post" accept-charset="UTF-8">
				{!! csrf_field() !!}
				<div class="weui-cells__title">Basic Info</div>
				<div class="weui-cells weui-cells_form">
                    <input class="weui-input" style="display:none" type="text" value="{{$type}}" name="order_type" placeholder="Name" required/>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">Name</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" type="text" name="name" placeholder="Name" />
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">Phone</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" type="number" maxlength="10" name="phone" pattern="[0-9]*" placeholder="Phone Number" required/>
						</div>
					</div>

					<div class="weui-cell">
						<div class="weui-cell__hd"><label for="" class="weui-label">Time</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" type="datetime-local" name="time" id="time" value="" placeholder="Time" />
						</div>
					</div>
					<div class="weui-cell weui-cell_select weui-cell_select-after">
						<div class="weui-cell__hd">
							<label for="" class="weui-label">City</label>
						</div>
						<div class="weui-cell__bd">
							<select class="weui-select" name="city">
								<option value="1">Vancouver</option>
								<option value="2">Richmond</option>
							</select>
						</div>
					</div>

					<div class="weui-cell">
						<div class="weui-cell__bd">
							<input class="weui-input" type="text" name="address" placeholder="Address" id="customer_address" />
						</div>
					</div>
				</div>
				<div class="weui-cells__title">Beds and Baths</div>

				<div class="weui-cells">
					<div class="mui-input-row">
						<label>Bed Rooms</label>
						<div class="mui-numbox">
							<button class="mui-btn mui-btn-numbox-minus" type="button">-</button>
							<input class="mui-input-numbox" type="number" name="bedroom" value=1 />
							<button class="mui-btn mui-btn-numbox-plus" type="button">+</button>
						</div>
					</div>
					<div class="mui-input-row">
						<label>Bath Rooms</label>
						<div class="mui-numbox">
							<button class="mui-btn mui-btn-numbox-minus" type="button">-</button>
							<input class="mui-input-numbox" type="number" name="bathroom" placeholder="0" />
							<button class="mui-btn mui-btn-numbox-plus" type="button">+</button>
						</div>
                    </div>
                    <div class="weui-cells weui-cells_checkbox">
                            <div class="mui-input-row mui-checkbox ">
                                <label>Checkbox</label>
                                <input name="additional[]" type="checkbox" value=1>
                            </div>
                            <div class="mui-input-row mui-checkbox ">
                                <label>Checkbox</label>
                                <input name="additional[]" type="checkbox"value=2>
                            </div>
                            <div class="mui-input-row mui-checkbox ">
                                <label>Checkbox</label>
                                <input name="additional[]" type="checkbox"value=3>
                            </div>
                        </div>
				</div>


				<div class="weui-btn-area">
					<a class="weui-btn weui-btn_primary" type="submit" onclick="myFunction()" id="showTooltips">Create Order</a>
				</div>
			</form>
		</div>
		<script src="./js/mui.min.js "></script>
		<script type="text/javascript">
			function myFunction() {

				document.getElementById("orderform").submit();
			}

			function initAutocomplete() {
				var cityBounds = new google.maps.LatLngBounds(
					new google.maps.LatLng(49.006663, -123.307710),
					new google.maps.LatLng(49.395186, -122.187598)

				);
				// Create the search box and link it to the UI element.

				var input = document.getElementById('customer_address');
				var options = {
					bounds: cityBounds,
					componentRestrictions: {
						country: 'ca'
					}
				};

				var searchBox = new google.maps.places.Autocomplete(input, options);

				// [START region_getplaces]
				// Listen for the event fired when the user selects a prediction and retrieve
				// more details for that place.
				searchBox.addListener('places_changed', function() {
					var places = searchBox.getPlaces();
					if(places.length == 0) {
						return;
					}
				});
            }
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
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCaG8JNWl68rUI9O-5ngoDZlyVh9Qa8yjk&libraries=places&callback=initAutocomplete" async defer></script>

	</body>

</html>