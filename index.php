<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Odontocloud - Login</title>
    <link rel="icon" type="image/png" href="Public/Assets/Images/oc_favicon.ico" sizes="16x16">
    <link rel="stylesheet" type="text/css" href="Public/Assets/Stylesheets/style.login.css">
    <link rel="stylesheet" type="text/css" href="Public/Assets/Semantic-ui/semantic.min.css">
    <link rel="stylesheet" type="text/css" href="Public/Assets/Toastr/toastr.min.css">
    <script type="text/javascript" src="Public/Assets/JQuery/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="Public/Assets/Semantic-ui/semantic.min.js"></script>
    <script type="text/javascript" src="Public/Assets/Toastr/toastr.min.js"></script>
    <script>let url = "http://localhost:8080/";toastr.options = {"closeButton": true, "debug": false, "newestOnTop": false, "progressBar": true, "positionClass": "toast-top-center", "preventDuplicates": false, "onclick": null, "showDuration": "300", "hideDuration": "1000", "timeOut": "5000", "extendedTimeOut": "1000", "showEasing": "swing", "hideEasing": "linear", "showMethod": "fadeIn", "hideMethod": "fadeOut"}</script>
</head>
<body>

<div class="container">
    <div class="main">
        <div class="login-avatar"></div>
    </div>

    <div class="login">
        <div class="login_form">
            <form class="ui large form">
                <div class="logo"></div>
                <div class="ui divider"></div>
                <div class="field">
                    <label for="usuario">Usuário</label>
                    <input type="text" name="usuario" placeholder="Usuário ou Email">
                </div>
                <div class="field">
                    <label for="senha">Senha</label>
                    <input type="password" name="senha" placeholder="Senha">
                </div>
                <br>
                <button class="ui primary right labeled icon large button fluid" type="submit">
                    <i class="right lock icon"></i>
                    Entrar
                </button>
            </form>
        </div>
    </div>
</div>

</body>
</html>