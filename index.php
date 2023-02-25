<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="Public/Assets/Stylesheets/style.login.css">
    <link rel="stylesheet" type="text/css" href="Public/Assets/Semantic-ui/semantic.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.0/css/all.css" integrity="sha384-Mmxa0mLqhmOeaE8vgOSbKacftZcsNYDjQzuCOm6D02luYSzBG8vpaOykv9lFQ51Y" crossorigin="anonymous">
    <script type="text/javascript" src="Public/Assets/JQuery/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="Public/Assets/Semantic-ui/semantic.min.js"></script>
</head>
<body>

<div class="container">
    <div class="main">
        <div class="login-avatar">

        </div>
    </div>

    <div class="login">
        <form class="ui large form">
            <h2 class="ui dividing header">Login</h2>
            <div class="field">
                <label>Usuário</label>
                <input type="text" name="usuario" placeholder="Usuário ou Email">
            </div>
            <div class="field">
                <label>Senha</label>
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

</body>
</html>