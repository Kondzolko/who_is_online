App.who_is_online = App.cable.subscriptions.create "WhoIsOnlineChannel",
  connected: ->
# Called when the subscription is ready for use on the server

  disconnected: ->
# Called when the subscription has been terminated by the server

  received: (data) ->

  speak: (status) ->
    @perform 'speak', online: status