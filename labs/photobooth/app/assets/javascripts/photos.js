$(function(){
  $('#booth').photobooth();
  $( '#booth' ).on( "image", take_photo);
});

function take_photo (event, dataUrl) {
    $.ajax({
    type: "POST",
    url: "/photos",
    data: { photo: dataUrl }
  }).done(function( msg ) {
    show_photos(msg);
  });
}

function show_photos (photo) {
  $('#photos').empty();
  for (var i = 0; i < photo.length; i++){
    var img = $('<img>');
    img.attr('src', photo[i].imagedata);
    $('#photos').prepend(img);
  }
}