$(document).ready(()->
  trans_val = window.opener.$('#transVal').val()

  save = ()->
    #myForm
    myBookName = $('#myBookName').val()
    alert(myBookName)
    console.log('myBookName' + myBookName)
    alert(trans_val)
    trans_val = localStorage['transVal']
    console.log(trans_val)
    localStorage[trans_val] = myBookName
    #    window.close()

  # later save()
  $('form').submit(save)
)
