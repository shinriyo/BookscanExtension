(function() {

  $(document).ready(function() {
    var save;
    save = function() {
      var name_val;
      name_val = $('#myBookName').val();
      chrome.extension.sendMessage({
        "tmp": name_val
      });
      return window.close();
    };
    return $('form').submit(save);
  });

}).call(this);
