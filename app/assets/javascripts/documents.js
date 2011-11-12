// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(function(){
  $('#documents_show .document .body').mouseup(function(){
    selection_start = window.getSelection().anchorOffset;
    selection_end = window.getSelections().focusOffset;
  })
})
