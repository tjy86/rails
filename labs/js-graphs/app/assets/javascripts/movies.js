$(function(){

  $('button').click(send_json_request_to_rails);

});

function send_json_request_to_rails () {
  // body...
}


function display_graph (data) {
    // annual data
  Morris.Line({
    element: 'moviegraph',
    data: [
      {y: '2012', a: 100, b: 3},
      {y: '2011', a: 75, b: 9},
      {y: '2010', a: 50, b: 72},
    ],
    xkey: 'y',
    ykeys: ['a','b'],
    labels: ['Series A','Series B']
  });
}