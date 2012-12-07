$(function(){
  $('#enter').click(get_quotes);
});

function get_quotes () {
  symbol = $('#symbol').val();
  $.ajax({
    type: "POST",
    url: "/stock",
    data: { symbol: symbol }
  }).done(function( msg ) {
    alert( "Data Saved: " + msg );
  });
}