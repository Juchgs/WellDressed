
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
         <title>Atualização</title>
         
    </head>
    <body>
        <form action="AtualizaFashionista" method="post">
            <div id="Welcome">
                <h1> WellDressed </h1>
            </div>
             <fieldset>        
          
                <label>
                    <input type="email" value="${sessionScope.fashionistaAtual.email}" id="email2" size="45" name="email" required="required" placeholder="Digite seu Email..." /><br/> <br/>
                </label>    
          
                <label>
                    <input type="text" id="nome"  name="nome" value="${sessionScope.fashionistaAtual.nome}" required="required" placeholder="Digite seu nome..."/> <br/> <br/>
                </label>
               
                <label>
                    <input type="password" id="senha2"  name="senha" value="${sessionScope.fashionistaAtual.senha}" required="required" placeholder="Digite sua Senha..."/> <br/> <br/>
                </label>
                
                 <label>
                    <input type="text" id="sobrenome"  name="sobrenome" value="${sessionScope.fashionistaAtual.sobrenome}" required="required" placeholder="Digite sua Sobrenome..."/> <br/> <br/>
                </label>
                 
            <input type="submit" class="botao" value="Atualizar" onClick="window.open('ListaFashionista')">
            </fieldset>          
        </form>
    </body>
</html>
