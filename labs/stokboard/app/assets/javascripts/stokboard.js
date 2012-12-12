$(function(){
  $('#enter').click(add_quotes);

  setInterval(update,1000);
  setInterval(graph,1000);
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

  $.ajax({
    type: "POST",
    url: "/update"
  }).done(function( msg ) {
    $('#stock_container').empty();
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

  $.ajax({
    type: "POST",
    url: "/graph"
  }).done(function( msg ) {
  $('#graph_container').empty();
    for (var prop in msg){
      console.log(prop);
      g = $('<div>');
      g.addClass('graph');
      g.attr('id', prop);
      $('#graph_container').append(g);
      Morris.Line({
        element: prop,
        data: msg[prop],
        xkey: 'created_at',
        ykeys: ['num'],
        labels: ['Price'],
        ymin: 'auto',
        ymax: 'auto'

      });

    }

  });


}

