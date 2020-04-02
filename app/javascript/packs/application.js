console.log("hello there!");
import "bootstrap";
import "../plugins/rankwatch";


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

