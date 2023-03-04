<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Odontocloud - Painel</title>
    <link rel="icon" type="image/png" href="Public/Assets/Images/oc_favicon.ico" sizes="16x16">
    <link rel="stylesheet" type="text/css" href="Public/Assets/Stylesheets/style.dashboard.css">
    <link rel="stylesheet" type="text/css" href="Public/Assets/Semantic-ui/semantic.min.css">
    <link rel="stylesheet" type="text/css" href="Public/Assets/Toastr/toastr.min.css">
    <script type="text/javascript" src="Public/Assets/JQuery/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="Public/Assets/Semantic-ui/semantic.min.js"></script>
    <script type="text/javascript" src="Public/Assets/Toastr/toastr.min.js"></script>
    <script>let url = "http://localhost:8080/";toastr.options = {"closeButton": true, "debug": false, "newestOnTop": false, "progressBar": true, "positionClass": "toast-top-center", "preventDuplicates": false, "onclick": null, "showDuration": "300", "hideDuration": "1000", "timeOut": "5000", "extendedTimeOut": "1000", "showEasing": "swing", "hideEasing": "linear", "showMethod": "fadeIn", "hideMethod": "fadeOut"}</script>
</head>

<body>
    <div class="container" id="container">
        <div class="sidenav">
            <div class="logo"></div>
            <div class="menu-accordion">

            </div>

        </div>

        <div class="header">

        </div>

        <div class="main">
            <div class="top">
                <div class="toggle-sidenav" id="toggle-sidenav">
                    <i class="grey bars big icon"></i>
                </div>

            </div><!--top-->

        </div>
    </div>
    <script>
        $('.toggle-sidenav, .toggle-sidenav-open').click(function(){
            $('#container').toggleClass('container-off');
            $('#toggle-sidenav').toggleClass('toggle-sidenav-open');
        });
    </script>
</body>
</html>