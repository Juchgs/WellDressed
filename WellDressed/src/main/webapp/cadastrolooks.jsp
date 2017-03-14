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
        <link rel="stylesheet" href="css/cadastrolooks.css" type="text/css"/>

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
                        <li class="active"><a href="PaginaInicial2.jsp">Página Inicial</a></li>
                        <li><a href="Perfil.jsp">Perfil</a></li>

                    </ul>
                </nav>

            </div>
        </div>
        <div id="cadastrol" >
            <a href="MontarLooks.jsp" class="button big special" id="bota">Voltar</a>
            
            <!-- Testando o Modal -->

<!-- Trigger/Open The Modal -->
<button id="myBtn">Abrir Modal</button>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
        <span class="close">&times;</span>
      <h3>Descreva seu Look</h3>
    </div>
    <div class="modal-body">
     <!--   <p>Some text in the Modal Body</p>
        <p>Some other text...</p> -->
        <table>
            <tr>
                <td><h2>Peça: </h2></td>
                <td><input type="text" name="" id="" placeholder="Digite o tipo da sua peça..."/></td>
            </tr>
            <tr>
                <td><h2>Cor:</h2></td>
                <td><input type="text" name="" id="" placeholder="Digite a cor..."/></td>
            </tr>
            <tr>
                <td><h2>Tecido:</h2></td>
                <td><input type="text" name="" id="" placeholder="Digite a cor..."/></td>
            </tr>
            <tr>
                <td><h2>Tamanho:</h2></td>
                <td><input type="text" name="" id="" placeholder="Digite a cor..."/></td>
            </tr>
        </table>
        <!--    <h3>Peça:</h3>
            <input type="text" name="" id="" placeholder="Digite o tipo da sua peça -->
    </div>
    <div class="modal-footer">
        <h3>WellDressed</h3>
    </div>
  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

            <!-- -->
            <p id="bo" style="color: white">Clique nos botões para cadastrar seus Looks !!!</p>
           
            </br></br></br></br></br></br>
           
            <form method="POST" action="upload" enctype="multipart/form-data" >
                File:
                <input type="file" name="file" id="file" /> <br/>
                Destination:
                <input type="text" value="/tmp" name="destination"/>
                </br>
                <input type="submit" value="Upload" name="upload" id="upload" />
            </form>

            <div class="caixaupload">
                <input id="fakeupload0" class="fakeupload" type="text" />
                <input accept="image/png" class="realupload" title="Vestidos" type="file" onchange="this.form.fakeupload.value = this.value;"/>
            </div>
            <div class="caixaupload">
                <input id="fakeupload1" class="fakeupload"  type="text" />
                <input accept="image/png" class="realupload" title="Saias" type="file" onchange="this.form.fakeupload.value = this.value;"/>
            </div>

            <div class="caixaupload">
                <input  id="fakeupload2" class="fakeupload" type="text" />
                <input accept="image/png" class="realupload" title="Blusas" type="file" onchange="this.form.fakeupload.value = this.value;"/>
            </div>
            <div class="caixaupload">
                <input id="fakeupload3" class="fakeupload" type="text" />
                <input accept="image/png" class="realupload" title="Shorts" type="file" onchange="this.form.fakeupload.value = this.value;"/>
            </div>

            <div class="caixaupload">
                <input id="fakeupload4" class="fakeupload" type="text" />
                <input accept="image/png" class="realupload" title="Sapatos" type="file" onchange="this.form.fakeupload.value = this.value;"/>
            </div>
            <div class="caixaupload">
                <input id="fakeupload5" class="fakeupload" type="text" />
                <input class="realupload" title="Calças" type="file" onchange="this.form.fakeupload.value = this.value;"/>
            </div>
            <div class="caixaupload">
                <input id="fakeupload6" class="fakeupload" type="text" />
                <input accept="image/png" class="realupload" title="Casacos" type="file" onchange="this.form.fakeupload.value = this.value;"/>
            </div>
            <div class="caixaupload">
                <input id="fakeupload7" class="fakeupload" type="text" />
                <input accept="image/png" class="realupload" title="Acessórios" type="file" onchange="this.form.fakeupload.value = this.value;"/>
            </div>
           
            <div class="caixaupload">
                <input id="fakeupload8" class="fakeupload" type="text" />
                <input accept="image/png" class="realupload" title="Ternos" type="file" onchange="this.form.fakeupload.value = this.value;"/>
            </div>
        </div>
    </body>
</html>