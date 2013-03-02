#myForm
myBookName = $('#myBookName')

$('#mySubmit').submit(save)

save = ()->
  trans_val = window.opener.document.getElementById('transVal').value
  console.log(trans_val)
  localStorage[trans_val] = myBookName
  window.close()
  alert('test')

