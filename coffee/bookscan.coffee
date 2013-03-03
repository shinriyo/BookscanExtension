#ファイル名取得
books = $('.downloading')
console.log(books.length)

for book in books
  #pdf name
  pdf_name = book.innerHTML
  my_book_name = localStorage[pdf_name]
  console.log(my_book_name)
  if my_book_name is undefined
    book.innerHTML += '（未命名）'
  else
    book.innerHTML = my_book_name

  book.onclick = () ->
    #alert('名前をつけよう')
    popupModal(chrome.runtime.getURL('./mypopup.html'), pdf_name)

popupModal = (url, name) ->
  localStorage['transVal'] = name
  window.showModalDialog(
    url, #移動先
    this, #ダイアログに渡すパラメータ（この例では、自分自身のwindowオブジェクト）
    "dialogWidth=300px; dialogHeight=120px;"
  )
###
  ele = $(document.createElement('div'))
  ele.id = 'transVal'
  ele.val(name)
###
