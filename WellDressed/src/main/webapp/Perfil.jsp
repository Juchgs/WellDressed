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
        <noscript>
        <link rel="stylesheet" href="css/skel-noscript.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-desktop.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet">
        </noscript>
        <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
        <!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/autocomplete.js"></script>
 
    </head>
    <body class="homepage">
        <!-- Header -->
        <div id="header">
            <div class="container">

                <!-- Logo -->
                <div id="logo">
                    <h1><a href="#">WellDressed</a></h1>
                </div>
                 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
                
                <!-- Nav -->
                <nav id="nav">               
                    <ul>
                        <li>
                            <div id="search">
                                <input type="text" id="txtBusca" placeholder="Buscar..."/>
                                <img src="css/images/lupa2.png" id="btnBusca" alt="Buscar"/>
                            </div>
                        </li>
                        <li>
                            <a href="PaginaInicial2.jsp">Página Inicial</a>
                        </li>
                        <li class="active">
                            <a href="Perfil.jsp">Perfil</a>
                        </li>
                        <!--<li>
                            <input type="submit" name="Listar" id="bot" value="Fashionistas" onclick="window.open('ListaFashionista')"/>
                        </li>-->
                        <li>
                            <form action="Logout" method="post">
                                <input type="submit" name="Sair" id="bot" value="Sair"/>
                            </form>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div id="TopUser">
            <div id="Config">
                <h1 style="margin-top:1%"><%=usuario.getNome()%></h1>
                <img id="imagemUser" src="css/images/edit.png" alt="Usuário" 
                     class="center-block img-circle img-responsive" style="max-width: 10em">
                <table>
                  <tr>
                            <td><a href="MontarLooks.jsp">MontarLooks</a></td> 
                            <td><a href="Configuracoes.jsp">Configurações</a></td>
                            <td><a href="Fashionistas.jsp" value="Fashionistas" onclick="window.open('ListaFashionista')">Fashionistas</a></td>
                   </tr>
                </table>
            </div>
                </div>
        </div>
        <div id="perfil">
            <div id="feed"> 
                <div id="feed2">
              
                </div>
            </div>
        </div>
    </body>
</html>
