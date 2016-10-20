<search>
  <input type="text" name="search" placeholder="Search for a film">
  <p>
    {status}
  </p>
  <div>
    <p each={ results }>
      { film.Title } | { film.Year }
    </p>
  </div>

  <script>
    var self = this;
    var limiter;
    var phrase;

    this.results = [];

    function updateResults(data) {
      // !data && (self.results = { title: 'no' });
      for (var film in data){
        self.results.push({ film: data[film] })
  		}
      self.update({ status: 'Results for "' + phrase + '"' });
      console.log(self.results)
    }

    function fetchResults() {
      phrase = self.search.value;
      self.update({status: 'Searching for "' + phrase + '"'});

      $.ajax({
  			url: encodeURI(omdbSearch + phrase),
  			dataType: 'json',
  			cache: false,
  			success: function(data) {
          var resultData = data.Response === 'True' ? data.Search : false;
          updateResults(resultData);
  			},
  			error: function(xhr, status, err) {
          console.log('Request Failed');
  			}
		  });
    }

    function handleInput() {
      self.update({status: 'Typing ...'});

      clearTimeout(limiter);

      limiter = setTimeout(function(){
        fetchResults();
  		}, 750);
    }

    this.search.addEventListener('input', handleInput);

    console.log(this);
    console.log(omdbImage);
  </script>
</search>
