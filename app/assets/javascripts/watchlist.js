$(function() {
  riot.mount('search');
});

var omdbUrl = 'omdbapi.com/';
var omdbKey = 'c1fdf939';
var omdbID = 'http://' + omdbUrl + '?tomatoes=true&i=';
var omdbSearch = 'http://' + omdbUrl + '?type=movie&s=';
var omdbPoster = 'http://img.' + omdbUrl + '?apikey=' + omdbKey + '&i=';

console.log('hi')
