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
        
        <link rel="stylesheet" href="css/skel-noscript.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-desktop.css" />
        <link rel="stylesheet" href="css/MontarLooks.css" type="text/css"/>

        <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
        <!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
    	<script>
		var abre = function(){
                    document.getElementById('porta3').style.right = '10px';
                    document.getElementById('porta4').style.left = '200px';
		}
	</script>
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
                        <li class="active"><a href="PaginaInicial2.jsp">Página Inicial</a></li>
                        <li><a href="Perfil.jsp">Perfil</a></li>

                    </ul>
                </nav>

            </div>
        </div>
        <div id="boneco2">
            </br></br>
            <a href="cadastrolooks.jsp" class="button big special" style="margin-left: 70%;">Cadastre seus looks</a>
            <a href="closet.jsp" class="button big special" style="margin-left: 74.5%;">Closet</a>

            <h2>Monte seus looks!</h2>
            <div id="closet">
                <div id="porta1">
                    <div id="colunas">
                        <ul>
                            <li><img src="like.png"><img src="like.png"></a></a></li>
                            <li><img src="like.png"><img src="like.png"></a></li>
                            <li><img src="like.png"><img src="like.png"></a></li>
                            <li><img src="like.png"><img src="like.png"></a></li>
                        </ul>
                    </div>
                </div>
                <div id="porta2">
                    <div id="colunas">
                        <ul>
                            <li><img src="like.png"><img src="like.png"></a></li>
                            <li><img src="like.png"><img src="like.png"></a> </li>
                            <li><img src="like.png"><img src="like.png"></a></li>
                            <li><img src="like.png"><img src="like.png"></a></li>
                        </ul>
                    </div>
                    
                </div>
                <div id="porta3"  onclick="abre()">
                    <img src="like.png"></a>

                </div>
                <div id="porta4" onclick="abre()">
                    <img src="like.png"></a>

                </div>
            </div>
        </div>
    </body>
</html>
