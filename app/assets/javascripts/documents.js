// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(function(){
  $('#documents_show .document .body').mouseup(function(){
    first_char_at = window.getSelection().anchorOffset;
    last_char_at = window.getSelection().focusOffset;
    selected_text = window.getSelection().anchorNode.data.slice(first_char_at, last_char_at)
    $(this).parent().find('.tagging form input[name="chunk[first_char_at]"]').val(first_char_at);
    $(this).parent().find('.tagging form input[name="chunk[last_char_at]"]').val(last_char_at);
    $(this).parent().find('.tagging .chunk_text').text(selected_text)
  })
})
