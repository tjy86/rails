$(function(){
  $('#enter').click(add_quotes);
  setTimeout(update,1);
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
    for (i = 0; i < msg['stocks'].length; i++){
      div = $('<div>');
      div.addClass('quote');
      add = msg['stocks'].length-i;
      length = msg['prices'].length-add;
      div.text(msg['stocks'][i].symbol +' '+msg['prices'][length].num);
      $('#stock_container').append(div);
    }
  });

}