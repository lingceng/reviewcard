jQuery( ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()
)

$(document).on 'page:fetch', ->
  console.log 'start fetch'
  NProgress.start()

$(document).on 'page:change', ->
  console.log 'page change'
  NProgress.done()

$(document).on 'page:restore', ->
  console.log 'start restore'
  NProgress.remove()



