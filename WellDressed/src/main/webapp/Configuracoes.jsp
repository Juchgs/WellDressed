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

        <link rel="stylesheet" href="css/skel-noscript.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-desktop.css" />
        <link rel="stylesheet" type="text/css" href="css/Configuracoes.css">
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
                    <div id = "pop">
                       <input type="submit" value="Desativar conta" id="botao4" onclick="window.open('Desativar.jsp')">
                       <input type="submit" value="Excluir" id="botao4" onclick="window.open('Excluir.jsp')">
                    </div>
             <section>
                   <form action="AtualizaFashionista" method="post">
                        <table style="align-content:center; ">
                            <tr><br>
                            <tr>
                                <td><h3>Email</h3></td>
                                <td><input type="email" value="${sessionScope.currentSessionUser.email}" id="email2" name="email" required="required" placeholder="Digite seu Email..." /></td>
                            </tr>
                            <td><h3>Nome</h3></td>
                            <td><input type="text" id="nome"  name="nome" value="${sessionScope.currentSessionUser.nome}" required="required" placeholder="Digite seu nome..."/></td>
                            </tr>
                             <tr>
                                <td><h3>Senha</h3></td>
                                <td><input type="password" id="senha2"  name="senha" value="${sessionScope.currentSessionUser.senha}" required="required" placeholder="Digite sua Senha..."/></td>
                            </tr>
                            <tr>
                                <td><h3>Sobrenome</h3></td>
                                <td><input type="text" id="sobrenome"  name="sobrenome" value="${sessionScope.currentSessionUser.sobrenome}" required="required" placeholder="Digite sua Sobrenome..."/></td>
                            </tr>
                          
                           
                            <td><h3>Município</h3></td>
                            <td><input type="text" name="municipio" class="caixaTexto" id="municipio" value="${sessionScope.currentSessionUser.municipio}" required="required" placeholder="Digite seu Municipio..."/></td>
                            </tr>
                            <tr>
                                <td><h3>Data Nascimento</h3></td>
                                <td><input type="text" name="data_nascimento" id="data_nascimento" value="${sessionScope.currentSessionUser.getData_nascimento_Formatada()}" required="required" placeholder="Digite sua Data de nascimento..."/></td>
                            </tr>
                            <tr>
                                <td><h3>DDD</h3></td>
                                <td><input type="text" name="ddd" id="ddd" value="${sessionScope.currentSessionUser.ddd}" required="required" placeholder="Digite seu DDD.."/></td>
                            </tr>
                            <tr>
                                <td><h3>Número</h3></td>
                                <td><input type="text" name="numero" id="numero" value="${sessionScope.currentSessionUser.numero}" required="required" placeholder="Digite seu número..."/></td>
                            </tr>
                            <td><h3>Sexo</h3></td>
                            <td><input type="text" name="sexo" class="caixaTexto" id="sexo" value="${sessionScope.currentSessionUser.sexo}" required="required" placeholder="Digite seu sexo..."/></td>
                            </tr>
                            <tr>
                                <td><h3>País</h3></td>
                                <td><input type="text" name="pais" id="pais" value="${sessionScope.currentSessionUser.pais}" required="required" placeholder="Digite seu País..."/></td>
                            </tr>
                            <tr>
                                <td><h3>Bairro</h3></td>
                                <td><input type="text" name="bairro" id="bairro"value="${sessionScope.currentSessionUser.bairro}" required="required" placeholder="Digite seu bairro..."/></td>
                            </tr>
                            <tr>
                                <td><h3>Complemento</h3></td>
                                <td><input type="text" name="complemento" id="complemento" value="${sessionScope.currentSessionUser.complemento}" required="required" placeholder="Digite seu complemento..."/></td>
                            </tr>
                            <td><h3>Tipo Logradouro</h3></td>
                            <td><input type="text" name="tipo_logradouro" class="caixaTexto" id="tipo_logradouro"value="${sessionScope.currentSessionUser.tipo_logradouro}" required="required" placeholder="Digite seu tipo logradouro..."/></td>
                            </tr>
                            <tr>
                                <td><h3>Logradouro</h3></td>
                                <td><input type="text" name="logradouro" id="logradouro" value="${sessionScope.currentSessionUser.logradouro}" required="required" placeholder="Digite seu logradouro..."/></td>
                            </tr>
                            <tr>
                                <td><h3>Número Do Logradouro</h3></td>
                                <td><input type="text" name="num_logradouro" id="num_logradouro" value="${sessionScope.currentSessionUser.num_logradouro}" required="required" placeholder="Digite seu número de logradouro..."/></td>
                            </tr>
                            <tr>
                                <td><h3>UF</h3></td>
                                <td><input type="text" name="uf" id="uf" value="${sessionScope.currentSessionUser.uf}" required="required" placeholder="Digite sua uf..."/></td>
                            </tr>
                        </table>
                    
                            <input type ="submit" id="botao6" value ="Atualizar"  class="button big special" style="margin-left: 32.5%;"/>
                   </form>           
                </section>
            </div>
        </div>
    </body>
</html>