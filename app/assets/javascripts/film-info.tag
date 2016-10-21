<film-info>
  <p class="plot">
    { info.Plot }
  </p>
  <p>
    <b>Director:</b> { info.Director } <br>
    <b>Genre:</b> { info.Genre } <br>
    <b>Awards:</b> { info.Awards } <br>
  </p>
  <p>
    <b>Runtime:</b> { info.Runtime } <br>
    <b>Rating:</b> { info.Rated } <br>
  </p>
  <p>
    <b>IMDB Rating:</b> { info.imdbRating } <br>
    <b>Metascore:</b> { info.Metascore } <br>
  </p>
  <script>
    this.info = opts;
  </script>
</film-info>
