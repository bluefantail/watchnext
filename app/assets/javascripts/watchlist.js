$(function() {
  riot.mount('search');
});

var omdbUrl = 'omdbapi.com/';
var omdbKey = 'c1fdf939';
var omdbID = 'http://' + omdbUrl + '?i=';
var omdbSearch = 'http://' + omdbUrl + '?s=';
var omdbImage = 'http://img.' + omdbUrl + '?apikey=' + omdbKey + '&i=';
