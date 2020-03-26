//= require rails-ujs
//= require turbolinks
//= require_tree

// require 'uri'
// require 'net/http'
// require 'openssl'

// url = URI("https://dataforseo-dataforseo-rank-tracker-and-serp-v1.p.rapidapi.com/docs.dataforseo.com/")

// http = Net::HTTP.new(url.host, url.port)
// http.use_ssl = true
// http.verify_mode = OpenSSL::SSL::VERIFY_NONE

// request = Net::HTTP::Get.new(url)
// request["x-rapidapi-host"] = 'dataforseo-dataforseo-rank-tracker-and-serp-v1.p.rapidapi.com'
// request["x-rapidapi-key"] = 'b016284af5msh34012b4c1b9c43dp171f75jsn4f6dcf240777'

// response = http.request(request)
// puts response.read_body

console.log("hello there!");

const myKeyword = document.querySelector('#keyword');

const getKeyword = (keyword) => {
  myKeyword.innerHTML = "";
};

fetch('https://apiv2.rankwatch.com//project/detail/json/p_id/c581d4904d184a170420d904bc85791c/s_id/2.00426/')
.then(response => response.json())
.then((data) => {
console.log(data);
const myKeyword = (data.keyword);

myKeyword();

myKeyword(data);
});

console.log(getKeyword);

// ${location.value}
