class window.PlayerView extends Backbone.View
  className: 'player'

  template: _.template '<div class="player"></div>'

  initialize: ->
    @render()

  render: ->
    @$('.player').html new HandView(collection: @model.get 'playerHand').el

