# TODO: Refactor this model to use an internal Game Model instead
# of containing the game logic directly.
class window.App extends Backbone.Model

  initialize: ->
    @set 'deck', deck = new Deck()
    @set 'playerHand', deck.dealPlayer()
    @set 'dealerHand', deck.dealDealer()

    @get('playerHand').on 'stand', =>
      console.log 'heard stand'
      dealerHand = @get('dealerHand')
      dealerHand.models[0].flip()
      dealerScore = dealerHand.scores()
      while Math.min(dealerScore[0],dealerScore[1]) < 17
        dealerHand.hit()
        dealerScore = dealerHand.scores()

    @get('playerHand').on 'bust', =>
      console.log 'player bust'

    @get('dealerHand').on 'bust', =>
      console.log 'Dealer Bust'



