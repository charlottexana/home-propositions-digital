//= require rails-ujs
//= require turbolinks
//= require_tree

// require 'uri'
// require 'net/http'
// require 'openssl'

document.addEventListener('DOMContentLoaded', function(){

var myKeyword = document.querySelector('#keywords');
// debugger

fetch('https://app.zenserp.com/api/v2/search?apikey=700c9fe0-74fd-11ea-826c-03f7ed395182&q=landlord%20lifeguard&device=desktop&gl=GB&hl=en&location=United%20Kingdom')
  .then(response => response.json())
  .then((data) => {
    var newRanking = (data.organic.map(position => {
      return position.title
    }));

  for (var i = 0; i < newRanking.length; i++) {
      var title = newRanking[i];
      var li = document.createElement('li');
      li.appendChild(document.createTextNode(title ));
      myKeyword.appendChild(li);
  }}
  );
});
