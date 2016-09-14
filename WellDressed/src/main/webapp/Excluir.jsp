<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="hibernatePersistent.fashionista.Fashionista"%>
<!DOCTYPE HTML>
<%
    response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
    response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
    response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
    response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
    Fashionista usuario = (Fashionista) session.getAttribute("currentSessionUser");
    if (null == usuario) {
        request.setAttribute("Error", "Sessão finalizada. Por favor, faça seu login.");
        RequestDispatcher rd = request.getRequestDispatcher("PaginaInicial.jsp");
        rd.forward(request, response);
    }
%>
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
        <link rel="stylesheet" type="text/css" href="Configuracoes.css">

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
                        <li><a href="PaginaInicial2.jsp">Página Inicial</a></li>
                        <li class="active"><a href="Perfil.jsp">Perfil</a></li>
                        <li><input type="submit" name="Listar" id="bot" value="Fashionistas" onclick="window.open('ListaFashionista')"/></li>
                        <li><form action="Logout" method="post">
                                <input type="submit" name="Sair" id="bot" value="Sair"/>
                            </form>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div id="perfil">
            <div id="config4">
            <p> Você tem certeza que deseja excluir sua conta?</p>
            <form>
                 <input type="submit" value="Sim" class="button big special" id="botao5" onclick="window.open('DeletaFashionista')">
                 <input type="submit" value="Nao" class="button big special" id="botao5">
             </form>
                </section>
            </div>
            </div>
        </div>
    </body>
</html>