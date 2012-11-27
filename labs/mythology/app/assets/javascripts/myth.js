$(function(){

  $('body').keypress(pressed_key);
  $('#searchform').hide()

});

function pressed_key (key) {
  if(key.keyCode == 6)
  {
    $('#searchform').show()
    $('#searchform input').val('')
    $('#searchform input').focus()
  }
  if (key.keyCode == 8) {
    $('#searchform').hide()
  };
}
