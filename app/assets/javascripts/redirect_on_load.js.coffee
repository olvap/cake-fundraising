$ ->
  delay = 3000
  if $('#redirect_on_load').html() > ""
    setTimeout (->
      window.location = "http://www.mycokerewards.com/home.do"
      return
    ), delay