class window.Player extends Backbone.Model

  initialize: ->
    @chips = 100
    @set 'playerHand', deck.dealPlayer()


