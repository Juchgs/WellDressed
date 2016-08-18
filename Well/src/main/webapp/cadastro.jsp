<%-- 
    Document   : cadastro
    Created on : 27/03/2016, 20:22:25
    Author     : Julliana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="cadastro.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WellDressed</title>
    </head>
    <body>
        <div id="login">
            <h1>WellDressed</h1>
            <div id="logintable">
              <form action="LoginServlet">
                <table>
                    <tr>
                        <td><h2>Email</h2></td>
                        <td><h2>Senha</h2></td>
                    </tr>
                    <tr>
                        <td><input type="text" id="email"/></td>
                        <td><input type="password" id="senha"/></td>
                        <td><input type="button" onClick="window.open('Aqui você coloca a url para redirecionamento')" value="Entrar" id="botao"></td>
                    </tr>
                      <tr>
                        <td></td>
                        <td><a href="">Esqueceu sua senha?</a></td>
                    </tr>
                </table>
              </form>
           </div>
        </div>
        <div id="cadastro">
            <h1>Cadastre-se</h1>
            <form action="CadastroFashionista" method="post">
                <table>
                    <tr>
                        <td><h3>Nome</h3></td>
                        <td><input type="text" name="nome" id="nome"/></td>
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
        </div>
    </body>
</html>
