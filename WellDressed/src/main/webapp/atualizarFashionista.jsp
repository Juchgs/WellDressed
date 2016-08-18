
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualização</title>
    </head>
    <body>
        <form action="AtualizaFashionista" method="post">
            <table>
                <tr> 
                    <td>Nome: <input type="text" name="nome" value="${sessionScope.fashionistaAtual.nome}" id="nome"/></td>
                </tr> 
                <tr>
                    <td>Sobrenome: <input type="text" name="sobrenome" value="${sessionScope.fashionistaAtual.sobrenome}" id="sobrenome"/></td>
                </tr>
                <tr>
                    <td>Email: <input type="email" name="email" value="${sessionScope.fashionistaAtual.email}" id="email2"/></td>
                </tr>
                <tr> 
                    <td>Senha: <input type="password" name="senha" value="${sessionScope.fashionistaAtual.senha}" id="senha2"/></td>
                </tr>
                <tr> 
                    <td><input type="submit" value="Atualizar"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>

