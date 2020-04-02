//= require rails-ujs
//= require turbolinks
//= require_tree

// require 'uri'
// require 'net/http'
// require 'openssl'


console.log("hello there!");


// window.onload = (function(){getKeyword()});

const myKeyword = document.querySelector('#keywords');

const getKeyword = (keyword) => {
  myKeyword.innerHTML = "";
};


fetch('https://app.zenserp.com/api/v2/search?apikey=700c9fe0-74fd-11ea-826c-03f7ed395182&q=landlord%20lifeguard&device=desktop&gl=GB&hl=en&location=United%20Kingdom')
.then(response => response.json())
.then((data) => {
console.log(data);

const newRanking = (data.organic[0].title);

myKeyword.insertAdjacentHTML('beforeend', newRanking)});

// const request = require('request');

// const options = { url: 'https://app.zenserp.com/api/v2/search?apikey=YOUR-API-KEY&q=landlord lifeguard&device=desktop&gl=GB&hl=en&location=United Kingdom' };

// function callback(error, response, body) {
//   if (!error && response.statusCode == 200) {
//     console.log(body);
//   }
// }


// getKeyword();

// request(options, callback);

// var settings = {
//   "url": "https://apiv2.rankwatch.com//project/detail/json/p_id/c581d4904d184a170420d904bc85791c/s_id/2.00426/",
//   "method": "GET",
//   "timeout": 0,
//   "headers": {
//     "Authorization": "Basic cnctdjItMzg4NjktMjE5MTM6NmFiRHFUNzZSY1NI"
//   },
// };



// getKeyword(data);
// });

// console.log(myKeyword);

// ${location.value}
