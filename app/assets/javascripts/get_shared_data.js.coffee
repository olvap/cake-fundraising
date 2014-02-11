jQuery.sharedCount = (url, fn) ->
  url = encodeURIComponent(url or location.href)
  arg =
    data:
      url: "http://localhost:300"
      apikey: "" #API KEY HERE

    url: "//" + ((if location.protocol is "https:" then "sharedcount.appspot" else "api.sharedcount")) + ".com/"
    cache: true
    dataType: "json"

  if "withCredentials" of new XMLHttpRequest
    arg.success = fn
  else
    cb = "sc_" + url.replace(/\W/g, "")
    window[cb] = fn
    arg.jsonpCallback = cb
    arg.dataType += "p"
  jQuery.ajax arg

jQuery(document).ready ($) ->
  $.sharedCount location.href, (data) ->
    $("#stumble").html data.StumbleUpon
    $("#reddit").html data.Reddit
    $("#facebook").html data.Facebook
    $("#googleplus").html data.GooglePlusOne
    $("#delicious").html data.Delicious
    $("#tweets_count").html data.Twitter
