$(document).ready(function(){
  $('.check:button').click(function(){
    $('input:checkbox').attr('checked','checked');
    $(this).val('uncheck all')
  },function(){
    $('input:checkbox').removeAttr('checked');
    $(this).val('check all');
  })
})