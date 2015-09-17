$(document).ready(function(){
  $('#check').click(function(){
  	$('input[type=checkbox]').prop('checked',true)
  })
  $('#uncheck').click(function(){
  	$('input[type=checkbox]').prop('checked',false)
  })
})