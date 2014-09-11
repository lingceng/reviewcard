$(document).on 'page:fetch', ->
  NProgress.start()

$(document).on 'page:change', ->
  NProgress.done()

$(document).on 'page:restore', ->
  NProgress.remove()

preview = () ->
  btn = $(this)
  from = $( btn.attr('data-from') )
  to = $( btn.attr('data-to') )

  if btn.hasClass('active')
    to.addClass('hidden')
    from.show()
    btn.removeClass('active')
  else
    to.removeClass('hidden')
    from.hide()
    btn.addClass('active')
    $.post "/cards/preview", "body": from.val(),
      (data) ->
        console.log('preview respond', data)
        to.html(data.body)
      'json'

jQuery( ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()

  $("[data-from]").click(preview)
)





