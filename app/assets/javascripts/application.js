//= require rails-ujs
//= require turbolinks
//= require_tree

// require 'uri'
// require 'net/http'
// require 'openssl'

console.log("hello there!");

var settings = {
  "url": "https://apiv2.rankwatch.com//project/detail/json/p_id/c581d4904d184a170420d904bc85791c/s_id/2.00426/",
  "method": "GET",
  "timeout": 0,
  "headers": {
    "Authorization": "Basic cnctdjItMzg4NjktMjE5MTM6NmFiRHFUNzZSY1NI"
  },
};

console.log(settings);

$.ajax(settings).done(function (response) {
  console.log(response);
});

// const myKeyword = document.querySelector('#keywords');

// const getKeyword = (keyword) => {
//   myKeyword.innerHTML = "landlord";
// };

// fetch('https://apiv2.rankwatch.com//project/detail/json/p_id/c581d4904d184a170420d904bc85791c/s_id/2.00426/')
// .then(response => response.json())
// .then((data) => {
// console.log(data);
// const newRanking = (data.keyword);

// getKeyword();

// getKeyword(data);
// });

// console.log(myKeyword);

// // ${location.value}
