log = (str)->
  chrome.tabs.executeScript({code: "console.log('" + str +"');"})

