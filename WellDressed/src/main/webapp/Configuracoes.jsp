<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@page import="org.displaytag.*" %>
<%@page import="java.util.*" %>
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

                    </ul>
                </nav>

            </div>
        </div>
     
         <div id="perfil">
                <div id="config4">
             <section>
                   <form action="AtualizaFashionista" method="post">
                        <table style="align-content:center; ">
                            <tr><br><br><br><br>
                            <tr>
                                <td><h3>Email</h3></td>
                                <td><input type="email" value="${sessionScope.fashionistaAtual.email}" id="email2" name="email" required="required" placeholder="Digite seu Email..." /></td>
                            </tr>
                            <td><h3>Nome</h3></td> 
                            <td><input type="text" id="nome"  name="nome" value="${sessionScope.fashionistaAtual.nome}" required="required" placeholder="Digite seu nome..."/></td>
                            </tr>
                             <tr>
                                <td><h3>Senha</h3></td>
                                <td><input type="password" id="senha2"  name="senha" value="${sessionScope.fashionistaAtual.senha}" required="required" placeholder="Digite sua Senha..."/></td>
                            </tr>
                            <tr>
                                <td><h3>Sobrenome</h3></td>
                                <td><input type="text" id="sobrenome"  name="sobrenome" value="${sessionScope.fashionistaAtual.sobrenome}" required="required" placeholder="Digite sua Sobrenome..."/></td>
                            </tr>
                           
                            
                            <td><h3>Município</h3></td>
                            <td><input type="text" name="municipio" class="caixaTexto" id="municipio"/></td>
                            </tr>
                            <tr>
                                <td><h3>Data Nascimento</h3></td>
                                <td><input type="text" name="data_nascimento" id="data_nascimento"/></td>
                            </tr>
                            <tr>
                                <td><h3>DDD</h3></td>
                                <td><input type="text" name="ddd" id="ddd"/></td>
                            </tr>
                            <tr>
                                <td><h3>Número</h3></td>
                                <td><input type="text" name="numero" id="numero"/></td>
                            </tr>
                            <td><h3>Sexo</h3></td>
                            <td><input type="text" name="sexo" class="caixaTexto" id="sexo"/></td>
                            </tr>
                            <tr>
                                <td><h3>País</h3></td>
                                <td><input type="text" name="pais" id="pais"/></td>
                            </tr>
                            <tr>
                                <td><h3>Bairro</h3></td>
                                <td><input type="text" name="bairro" id="bairro"/></td>
                            </tr>
                            <tr>
                                <td><h3>Complemento</h3></td>
                                <td><input type="text" name="complemento" id="complemento"/></td>
                            </tr>
                            <td><h3>Tipo Logradouro</h3></td>
                            <td><input type="text" name="tipo_logradouro" class="caixaTexto" id="tipo_logradouro"/></td>
                            </tr>
                            <tr>
                                <td><h3>Logradouro</h3></td>
                                <td><input type="text" name="logradouro" id="logradouro"/></td>
                            </tr>
                            <tr>
                                <td><h3>Número Do Logradouro</h3></td>
                                <td><input type="text" name="num_logradouro" id="num_logradouro"/></td>
                            </tr>
                            <tr>
                                <td><h3>UF</h3></td>
                                <td><input type="text" name="uf" id="uf"/></td>
                            </tr>
                        </table>
                        <input type="submit" value="Atualizar" class="button big special" id="botao3" onclick="window.open('Perfil.jsp')">
                    </form>
                </section>
            </div>
        </div>
    </body>
</html>
