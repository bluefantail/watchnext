<result>
  <div class="title">
    { film.Title }
  </div>
  <div class="attribute">
    { film.Year }
  </div>
  <div class="result-info">
    <div name="poster"></div>
    <div name="info"></div>
  </div>

  <script>
    var self = this;

    function fetchFilm(id) {
      var url = [];
          url.poster = omdbPoster + id;
      riot.mount(self.poster, 'film-poster', url);

      $.ajax({
  			url: encodeURI(omdbID + id),
  			dataType: 'json',
  			cache: false,
  			success: function(data) {
          riot.mount(self.info, 'film-info', data);
  			},
  			error: function(xhr, status, err) {
          console.log('Request Failed');
  			}
		  });
    }

    function handleClick() {
      var filmID = self.root.id;
      fetchFilm(filmID);
    }

    this.root.addEventListener('click', handleClick);
  </script>
</result>
