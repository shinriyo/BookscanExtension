(function() {
  var book, books, my_book_name, pdf_name, popupModal, tmp_pdf_name, _i, _len;

  books = $('.downloading');

  console.log(books.length);

  tmp_pdf_name = '';

  popupModal = function(url, name) {
    return window.showModalDialog(url, this, "dialogWidth=300px; dialogHeight=120px;");
  };

  for (_i = 0, _len = books.length; _i < _len; _i++) {
    book = books[_i];
    pdf_name = book.innerHTML;
    my_book_name = localStorage[pdf_name];
    console.log(my_book_name);
    if (my_book_name === void 0) {
      book.innerHTML += '（未命名）';
    } else {
      book.innerHTML = 'a';
    }
    book.onclick = function() {
      tmp_pdf_name = pdf_name;
      return popupModal(chrome.runtime.getURL('./mypopup.html'), pdf_name);
    };
  }

  chrome.extension.onRequest.addListener(function(request, sender, sendResponse) {
    var book_name;
    book_name = request.tmp;
    alert(book_name);
    return localStorage[tmp_pdf_name] = book_name;
  });

}).call(this);
