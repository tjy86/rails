$(function(){
  $('#enter').click(add_quotes);
  setTimeout(update,3000);
});

function add_quotes () {
  symbol = $('#symbol').val();
  $.ajax({
    type: "POST",
    url: "/stock",
    data: { symbol: symbol }
  });
}

function update () {
  $('#stock_container').empty();
  $.ajax({
    type: "POST",
    url: "/update"
  }).done(function( msg ) {
    for (i = 0; i < msg.length; i++){
      span = $('<span>');
      span.addClass('quote');
      span.text(msg[i].symbol);
      span.text(msg[i].symbol);
      $('#stock_container').append(span);
    }
  });

}