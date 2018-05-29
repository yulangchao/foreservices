<!DOCTYPE html>
<html>
<head>
  <title>Awesome Book Store</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>


@yield('content')

  <script src="http://code.jquery.com/jquery.js"></script>
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
</body>
</html>