$(function(){
  $('#enter').click(add_quotes);
  setTimeout(update,1);
  $('#update').click(update);
  $('#graph').click(graph);
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

      add = msg['stocks'].length-i;
      length = msg['prices'].length-add;

      s = $('<div>');
      s.addClass('s');
      s.text(msg['stocks'][i].symbol);
      n = $('<div>');
      n.addClass('n');
      n.text('$'+msg['prices'][length].num);
      div = $('<div>');
      div.addClass('quote');
      $('#stock_container').append(div);
      div.append(s);
      div.append(n);
    }
  });

}

function graph () {
  $('#graph_container').empty();
  $.ajax({
    type: "POST",
    url: "/graph"
  }).done(function( msg ) {
    for (var prop in msg){
      console.log(prop);
      Morris.Line({
        element: 'graph_container',
        data: msg[prop],
        xkey: 'created_at',
        ykeys: ['num'],
        labels: ['Price']
      });

    }

  });


}

