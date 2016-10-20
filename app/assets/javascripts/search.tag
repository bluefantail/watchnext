<search>
  <input type="text" name="search" placeholder="Search for a film">
  <p>
    {status}
  </p>

  <script>
    var self = this;
    var limiter;
    var phrase;

    function updateResults() {
      phrase = self.search.value;
      self.update({status: 'Searching for "' + phrase + '"'});
    }

    function handleInput() {
      self.update({status: 'Typing ...'});

      clearTimeout(limiter);

      limiter = setTimeout(function(){
        updateResults();
  		}, 750);
    }

    this.search.addEventListener('input', handleInput);

    console.log(this);
  </script>
</search>
