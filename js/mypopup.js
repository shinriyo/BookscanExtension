(function() {
  var myBookName, save;

  myBookName = $('#myBookName');

  $('#mySubmit').submit(save);

  save = function() {
    var trans_val;
    trans_val = window.opener.document.getElementById('transVal').value;
    console.log(trans_val);
    localStorage[trans_val] = myBookName;
    window.close();
    return alert('test');
  };

}).call(this);
