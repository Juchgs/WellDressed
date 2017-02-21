<!DOCTYPE HTML>
<!--
        Royale by TEMPLATED
        templated.co @templatedco
        Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
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
    <body class="homepage">

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
                        <li class="active"><a href="PaginaInicial.jsp">Página Inicial</a></li>
                        <li><a href="Cadastro.jsp">Cadastre-se</a></li>
                    </ul>
                </nav>

            </div>
        </div>

        <!-- Header -->

        <!-- Banner -->
        <div id="banner">
            <div class="container">
                <div id = "login">
                    <form action="Login" method="post">
                        <table>
                            <tr>
                                <td><h2>Email</h2></td>
                                <td><h2>Senha</h2></td>
                            </tr>
                            <tr>
                                <td><input type="text" name="un" id="email" placeholder="Digite seu email..."/></td>
                                <td><input type="password" name="pw" id="senha" placeholder="Digite sua senha..."/></td>
                                <td><input type="submit" value="Entrar" id="botao"></td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td><a href="">Esqueceu sua senha?</a></td>
                            </tr>
                        </table>
                        <% if (request.getAttribute("Error") != null) { %>
                        <a>${requestScope.Error}</a>
                        <% }%>
                    </form>
                </div>

            </div>
        </div>
        <!-- /Banner -->

        <!-- Main -->
        <div id="main">
            <div id="portfolio" class="container">
                <div class="row">
                    <section class="3u">
                        <header>
                            <h2>SP Fashion Week</h2>
                        </header>
                        <a href="#" class="image full"><img src="https://catracalivre.com.br/wp-content/uploads/2014/03/spfw4_edt.jpg" alt=""></a>
                        <p>São Paulo Fashion Week (SPFW) é o maior evento de moda do Brasil e o mais importante da América Latina, do Hemisfério Sul e a quinta maior semana de moda do mundo, depois das de Paris, Milão, Nova York, Londres.</p>
                        <a href="#" class="button">Leia mais</a>
                    </section>
                    <section class="3u">
                        <header>
                            <h2>VS Fashion Show</h2>
                        </header>
                        <a href="#" class="image full"><img src="http://images5.fanpop.com/image/photos/27100000/vsfs-the-victorias-secret-fashion-show-27126493-800-600.jpg" alt=""></a>
                        <p>Victoria's Secret Fashion Show é um desfile anual de moda patrocinada pela marca de lingerie e produtos de beleza, Victoria's Secret. A marca usa o show para promover e comercializar seus produtos em ambientes de alto perfil.</p>
                        <a href="#" class="button">Leia mais</a>
                    </section>
                    <section class="3u">
                        <header>
                            <h2>Curiosidades da Moda</h2>
                        </header>
                        <a href="#" class="image full"><img src="http://morandosozinha.com.br/wp-content/uploads/2015/08/Closet-inspira%C3%A7%C3%B5es-e-dicas-05.jpg" alt=""></a>
                        <p>O mundo da moda tem uma história bem longa e guarda muitas curiosidades que são no mínimo interessantes. Aqui listamos algumas curiosidades que provavelmente muitos não saibam, como por que e de onde surgiram!</p>
                        <a href="#" class="button">Leia mais</a>
                    </section>
                    <section class="3u">
                        <header>
                            <h2>Tendências</h2>
                        </header>
                        <a href="#" class="image full"><img src="http://www.taomaislindas.com.br/wp-content/uploads/2015/08/Closet-Feminino-Post-2-800x600.jpg" alt=""></a>
                        <p>Veja as principais tendências de moda do Brasil e do mundo, direto dos principais desfiles e tapetes vermelhos. Você também fica por dentro do que as famosas vestem e encontrar inspirações para seus looks de festa ou do dia a dia. </p>
                        <a href="#" class="button">Leia mais</a>
                    </section>
                </div>
            </div>

            <!-- Welcome -->		
            <div id="welcome" class="container">
                <div class="divider"></div>
                <div class="row">
                    <section>
                        <header>
                            <h2>Rede Social: WellDressed</h2>
                        </header>
                        <p>WellDressed é uma rede social de modas que permitirá os usuários cadastrarem suas roupas, calçados e acessórios com o objetivo de escolher seus looks virtualmente, podendo pedir ajuda aos seus amigos, sendo ou não ser avaliado. Além disso, terá a opção de permitir que seus amigos vejam o seu guarda-roupa virtual ou algumas peças, dando dicas dos looks.</p>
                    </section>
                </div>
            </div>
            <!-- /Welcome -->

        </div>
        <!-- /Main -->		

        <!-- Footer -->
        <div id="footer">
            <div class="container">
                <section>
                    <header>
                        <h2>Galeria</h2>
                        <span class="byline">Fotos compartilhadas dos usuários</span>
                    </header>
                    <div class="row">
                        <section class="4u">
                            <a href="#" class="image full"><img src="https://40.media.tumblr.com/11e329bdb4a65d7aa46348a4e6c6d590/tumblr_n0q9m4sdLw1sufw1mo1_500.jpg" alt=""></a>
                        </section>
                        <section class="4u">
                            <a href="#" class="image full"><img src="http://data.whicdn.com/images/32483003/tumblr_m70a93vZ3T1rxsgcbo1_500_large.jpg" alt=""></a>
                        </section>
                        <section class="4u">
                            <a href="#" class="image full"><img src="http://41.media.tumblr.com/73abbaf771e95a50655d533565665f5d/tumblr_mrux1owHXX1rp4ph6o1_500.jpg" alt=""></a>
                        </section>
                    </div>
                    <a href="#" class="button">Veja mais</a>
                </section>
            </div>
        </div>
        <!-- /Footer -->

        <!-- Copyright -->
        <div id="copyright">
            <div class="container">
                Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
            </div>
        </div>
    </body>
</html>
