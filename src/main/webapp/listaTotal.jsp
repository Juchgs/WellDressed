<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@page import="org.displaytag.*" %>
<%@page import="java.util.*" %>

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
        <link rel="stylesheet" type="text/css" href="css/listaTotal.css">
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
            </div>
        </div>
            <div id="perfil">
                <div id="feed">
                    <display:table name="${sessionScope.fashionistas}" class="dataTable">
                        
                        <display:column property="email" />
                        <display:column property="nome" />
                        <display:column property="sobrenome" />
                        
                        <!--criar um link para o perfil-->
                        <display:column title="Visitar" href="VaiPraPaginaDoFashionista" paramId="email" paramProperty="email"><img src="edit.png" title="Update"></display:column>
                        <display:column title="Editar" href="CarregaFashionista" paramId="email" paramProperty="email"><img src="edit.png" title="Update"></display:column>                        
                        <display:column title="Deletar" href="DeletaFashionista" paramId="email" paramProperty="email"><img src="delete.png" title="Delete"></display:column>
                    </display:table>
                    <br/>
                </div>
            </div>       
    </body>
</html>
