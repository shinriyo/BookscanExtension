#ファイル名取得
books = $('.downloading')
console.log(books.length)
tmp_pdf_name = ''

popupModal = (url, name) ->
  window.showModalDialog(
    url, #移動先
    this, #ダイアログに渡すパラメータ（この例では、自分自身のwindowオブジェクト）
    "dialogWidth=300px; dialogHeight=120px;"
  )

for book in books
  #pdf name
  pdf_name = book.innerHTML
  my_book_name = localStorage[pdf_name]
  console.log(my_book_name)
  if my_book_name is undefined
    book.innerHTML += '（未命名）'
  else
    #book.innerHTML = my_book_name
    book.innerHTML = 'a'

  book.onclick = () ->
    #alert('名前をつけよう')
    tmp_pdf_name = pdf_name
    popupModal(chrome.runtime.getURL('./mypopup.html'), pdf_name)

#chrome.extension.onMessage.addListener(
chrome.extension.onRequest.addListener(
  (request, sender, sendResponse)->
    book_name = request.tmp
    alert(book_name)
    localStorage[tmp_pdf_name] = book_name
)
