<%-- 
    Document   : teste
    Created on : 07/03/2017, 10:55:23
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>Laboratório de Computação Física</title>

        <link rel="icon" href="imag/gamba-icon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="imag/gamba-icon.ico" type="image/x-icon" />    
        
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

    <body>
        
        <div class="container">

            <form action="NomeDoServlet" name="NomeDoForm" method="POST" autocomplete="off">
                <div class="row" style="margin-bottom: 15px">
                    <input type="text" id="SetURL" name="imagem" style="display: none">
                    <a role="button" type="file" data-toggle="modal" data-target="#fotoModal">
                        <div class="col-xs-12 col-sm-12 text-center">
                            <img id="imagemUser" src="css/images/edit.png" alt="Usuário" 
                                 class="center-block img-circle img-responsive" style="max-width: 10em">
                        </div>
                    </a>
                </div>
            </form>
        </div>


        <!-- Modal da Foto -->

        <div class="modal fade" id="fotoModal" role="dialog">
            <div class="modal-dialog">

                <div class="modal-content">
                    <div class="modal-header" align="center">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Insira uma URL válida para adicionar uma foto de perfil</h4><br>
                        
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 text-center">
                                <img id="imagemUserURL" src="css/images/edit.png" alt="Usuário" 
                                     class="center-block img-circle img-responsive" style="max-width: 10em">
                            </div>
                        </div>
                        
                        <div class="row" style="margin-top: 20px; margin-bottom: 5px">
                            <div class="form-group col-md-3"></div>
                            <div class="form-group col-md-6">
                                <input type="text" class="form-control"
                                       name="linkFoto" id="linkFoto" placeholder="Insira uma URL válida para sua foto">
                            </div>
                            <div class="form-group col-md-3"></div>
                        </div>
                        
                        <a class="btn btn-primary" data-dismiss="modal" onclick="setImagem()">Pronto</a>
                        <a class="btn btn-default" data-dismiss="modal">Cancelar</a>
                    </div>
                </div>

            </div>
        </div>


        <script>
            window.setInterval(fotoURLTest, 1000);
            
            window.urlOriginal = document.getElementById('UserFotoURL').src;
            
            function fotoURLTest()
            {
                url2 = document.getElementById("linkFoto").value;
                
                if(url2 !== "")
                    document.getElementById('imagemUserURL').src = url2;
            }
            
            function setImagem()
            {
                url2 = document.getElementById("linkFoto").value;
                
                document.getElementById('imagemUser').src = url2;
                document.getElementById('SetURL').value = url2;
            }
            
        </script>
        
    </body>
</html>