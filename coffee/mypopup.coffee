$(document).ready(()->

  save = ()->
    #myForm
    name_val = $('#myBookName').val()
    chrome.extension.sendMessage({"tmp": name_val}, ()->)
    window.close()

  # later save()
  $('form').submit(save)
)
