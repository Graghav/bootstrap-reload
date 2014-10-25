(($, window, document, undefined_) ->
  Reload = (elem, options) ->
    @$elem = $(elem)
    @options = options
    return

  Reload::defaults =
    time: 3000
    autoReload: false
    beforeReload: ->

    afterReload: ->

  Reload::init = ->
    self = this
    
    # Set the configuration parameters
    self.config = $.extend({}, self.defaults, self.options)
    
    # Set the container for refresh animation
    self.config.refreshContainer = $(self.config.refreshContainer) or self.$elem.find(".refresh-container")
    
    # Set the container to update the data with
    self.config.dataContainer = $(self.config.dataContainer) or self.$elem.find(".data-container")
    self.$elem.find(".fa-refresh").click self.reload()
    setInterval self.reload, self.config.time  if self.config.autoReload
    self

  Reload::reload = ->
    _self = this
    _self.$elem.find(".fa-refresh").addClass "fa-spin"
    _self.cofig.refreshContainer.fadeIn()
    
    # Send the AJAX request to fetch the data
    $.ajax
      url: _self.$elem.data("url")
      async: true
      beforeSend: _self.config.beforeReload
      success: (data) ->
        _self.config.dataContainer.html data
        _self.config.afterReload()
        return

    return

  
  # Register the plugin to JQuery
  $.fn.reload = (options) ->
    @each ->
      $this = undefined
      reload = undefined
      $this = $(this)
      reload = new Reload(this, options)
      reload.init()

    return

  return
) window.jQuery, window, document
