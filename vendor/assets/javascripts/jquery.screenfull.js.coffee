#= require jquery

do (jQuery) ->
  $.isFullScreenEnabled = ->
    screenfull.enabled && screenfull.raw.fullscreenchange

  $.extend $.fn,
    fullScreen: ->
      @.each ->
        $(@).on 'click', ->
          screenfull.toggle(@) if $.isFullScreenEnabled()
        .on screenfull.raw.fullscreenchange ->
          $(@).trigger(if screenfull.isFullscreen then 'fullscreen:enter' else 'fullscreen:exit')
