$ ->
  if $('#stats').html() > ""
    setInterval (->
      $.getJSON("/stats.json").done (data) ->
        console.log data["stats"]["total"]
        $("#total").html data["stats"]["total"]
        $("#by_session").html data["stats"]["by_session"]
        $("#confirmation").html data["stats"]["confirmation"]
    ), 3000


