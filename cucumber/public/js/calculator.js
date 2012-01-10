$(function(){
  var valueFor = function(inputName) {
    return parseFloat($(':input[name='+inputName+']').val())
  }

  $('#calculate').on("click",function(){
    var result = valueFor('leftOperand') + valueFor('rightOperand')
    $('.result').text(result)
  });
});