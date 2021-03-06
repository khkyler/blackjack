class window.Hand extends Backbone.Collection
  model: Card

  initialize: (array, @deck, @isDealer) ->

  stand: ->
    console.log 'sent stand trigger'
    @trigger 'stand' #@

  hit: ->
    currentScore = @scores()
    if Math.min(currentScore[0], currentScore[1]) < 22
      console.log "Hit "
      @add(@deck.pop())
      console.log @scores()
    currentScore = @scores()
    if Math.min(currentScore[0], currentScore[1]) > 21
      @trigger 'bust'


  hasAce: -> @reduce (memo, card) ->
    memo or card.get('value') is 1
  , 0

  minScore: -> @reduce (score, card) ->
    score + if card.get 'revealed' then card.get 'value' else 0
  , 0

  scores: ->
    # The scores are an array of potential scores.
    # Usually, that array contains one element. That is the only score.
    # when there is an ace, it offers you two scores - the original score, and score + 10.
    [@minScore(), @minScore() + 10 * @hasAce()]


