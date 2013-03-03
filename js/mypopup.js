(function() {

  $(document).ready(function() {
    var save, trans_val;
    trans_val = window.opener.$('#transVal').val();
    save = function() {
      var myBookName;
      myBookName = $('#myBookName').val();
      alert(myBookName);
      console.log('myBookName' + myBookName);
      alert(trans_val);
      trans_val = localStorage['transVal'];
      console.log(trans_val);
      return localStorage[trans_val] = myBookName;
    };
    return $('form').submit(save);
  });

}).call(this);
