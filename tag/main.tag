<main>
  <home show={view.home}></home>
  <about show={view.about}></about>
  <talks show={view.talks}></talks>
  <words show={view.words}></words>
  <code show={view.code}></code>
  <connect show={view.connect}></connect>

  <script type = "text/javascript">
    this.view = {
      home: true,
      about: false,
      talks: false,
      words: false,
      code: false,
      connect: false
    }
  </script>
  <script type = "text/javascript">
      r = riot.route.create()
      r('/', function () { viewswitch('home') })
      r('/about', function () { viewswitch('about') })
      r('/talks', function () { viewswitch('talks') })
      r('/words', function () { viewswitch('words') })
      r('/code', function () { viewswitch('code') })
      r('/connect', function () { viewswitch('connect') })

      var self = this

      function viewswitch(v){
          Object.keys(self.view).forEach(function (k) {
              self.view[k] = false
          })
          self.view[v] = true
          self.update()
      }
  </script>
</main>
