NProgress.configure({
  showSpinner: false
  ease: 'ease'
  speed: 500
})

$(document).on 'page:fetch', ->
  NProgress.start()
  NProgress.set(0.4)

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
  $("[data-toggle=tooltip], .has-tooltip").tooltip()

  $("[data-from]").click(preview)
)





