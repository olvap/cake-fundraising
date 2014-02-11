$ ->
  $('.datetimepicker').datetimepicker()

  $("#datetimepicker_start").on("change.dp", (e) ->
    $('#datetimepicker_end').data("DateTimePicker").setStartDate(e.date)
  )
  $("#datetimepicker_end").on("change.dp", (e) ->
    $('#datetimepicker_start').data("DateTimePicker").setEndDate(e.date)
  )