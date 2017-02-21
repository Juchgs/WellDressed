<!DOCTYPE HTML>

<html>
    <head>
        <title>WellDressed</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/skel-panels.min.js"></script>
        <script src="js/init.js"></script>
        <noscript>
        <link rel="stylesheet" href="css/skel-noscript.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-desktop.css" />
        </noscript>
        <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
        <!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
    </head>
    <body>
        <!-- Header -->
        <div id="header">
            <div class="container">

                <!-- Logo -->
                <div id="logo">
                    <h1><a href="#">WellDressed</a></h1>
                </div>

                <!-- Nav -->
                <nav id="nav">
                    <ul>
                        <li><a href="PaginaInicial.jsp">Página Inicial</a></li>
                        <li class="active"><a href="Cadastro.jsp">Cadastre-se</a></li>
                    </ul>
                </nav>

            </div>
        </div>

        <!-- Main -->
        <div id="main">
            <div id="cadastro" >
                <section>
                    <form action="CadastroFashionista" method="post">
                        <table style="align-content:center;width:100%">
                            <br><p>Dado(s) inválido(s), tente novamente!</p>
                            <tr><br><br>
                            <td><h3>Nome</h3></td>
                            <td><input type="text" name="nome" class="caixaTexto" id="nome"/></td>
                            </tr>
                            <tr>
                                <td><h3>Sobrenome</h3></td>
                                <td><input type="text" name="sobrenome" id="sobrenome"/></td>
                            </tr>
                            <tr>
                                <td><h3>Email</h3></td>
                                <td><input type="text" name="email" id="email2"/></td>
                            </tr>
                            <tr>
                                <td><h3>Senha</h3></td>
                                <td><input type="password" name="senha" id="senha2"/></td>
                            </tr>
                        </table>
                        <input type="submit" value="Cadastre-se" id="botao2">
                    </form>
                </section>
            </div>
        </div>
        <div id="footer">

        </div>
    </body>
</html>
