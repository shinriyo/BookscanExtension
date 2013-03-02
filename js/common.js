(function() {
  var log;

  log = function(str) {
    return chrome.tabs.executeScript({
      code: "console.log('" + str(+"');")
    });
  };

}).call(this);
