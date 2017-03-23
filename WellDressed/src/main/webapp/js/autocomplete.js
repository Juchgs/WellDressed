/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
    $( "#txtBusca" ).autocomplete({
      source: function( request, response ) {
        $.ajax( {
            /* Mudar esse url para o que será utilizado realmente*/
          /*  https://jqueryui.com/resources/demos/autocomplete/search.php?term=coo*/
          url: "http://localhost:8080/WellDressed/ListaFashionista",
          dataType: "json",
          data: {
            nome: request.term
          },
          success: function( data ) {
            console.log(data);
             response($.map(data, function(item) {
                            return {
                              label: item.nome,
                              value: item.nome
                            }
                          }));
          }, 
            error: function( data ) {
            console.log(data);
            response( data );
          }
        } );
      },
      minLength: 2,
      /* Mudar a função function */
      select: function( event, ui ) {
        log( "Selected: " + ui.item.value + " aka " + ui.item.id );
      }
    } );
});

 
  

