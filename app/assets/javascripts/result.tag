<result>
  <div class="title">
    { film.Title }
  </div>
  <div class="attribute">
    { film.Year }
  </div>
  <div name="info"></div>

  <script>
    var self = this;

    function updateFilm(data) {
      riot.mount(self.info, 'film-info', data);
    }

    function fetchFilm(id) {
      $.ajax({
  			url: encodeURI(omdbID + id),
  			dataType: 'json',
  			cache: false,
  			success: function(data) {
          updateFilm(data);
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
