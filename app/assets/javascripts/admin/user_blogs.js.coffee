# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#preview_link").click ->
    content = $("#content").val()
    $.ajax
      url: '/admin/user_blogs/preview_content'
      data:
        content: content
      dataType: "json"
      type: 'post'
      success: (data, status) =>
        $("#preview_body").html(data.preview_body)
        $('#preview').modal('show')