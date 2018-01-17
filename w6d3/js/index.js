console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
  url:'http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=b38d4060ee78d8aabc0a15a7864ec4b2',
  type: 'GET',
  success: function(stuff) {console.log(stuff);},
  error: function(stuff) {console.log('error');}
});
// Add another console log here, outside your AJAX request
console.log('done');
