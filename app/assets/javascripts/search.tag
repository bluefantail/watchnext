<search>
  <input type="text" name="search" placeholder="Search for a film">
  <p class="status">
    { status }
  </p>
  <div>
    <result each={ results }/>
  </div>

  <script>
    var self = this;
    var limiter;
    var phrase;

    function updateResults(data) {
      self.results = [];

      for (var media in data){
        self.results.push({ media: data[media] })
  		}

      if (!data) {
        self.update({ status: "No results found for '" + phrase + "'" })
      }else {
        self.update({ status: "Results for '" + phrase + "'" });
      }

      console.log(self.results)
      console.log(self);
    }

    function fetchResults() {
      phrase = self.search.value.trim();
      self.update({status: "Searching for '" + phrase + "'"});

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
  		}, 700);
    }

    this.search.addEventListener('input', handleInput);

    console.log(this);
  </script>
</search>
