assert = chai.assert

describe 'deck', ->
  deck = null
  hand = null

  beforeEach ->
    deck = new Deck()
    hand = deck.dealPlayer()

  describe 'hit', ->
    it 'should give the last card from the deck', ->
      assert.strictEqual deck.length, 50
      lastCard = deck.last()
      hand1 = hand.hit()
      assert.strictEqual lastCard, hand1.models[2]
      assert.strictEqual deck.length, 49

  describe 'stand', ->
    it 'make the dealer draw until 17 or bust', ->

  describe 'bust', ->
    it 'make the dealer draw until 17 or bust', ->

  describe 'stand', ->
    it 'make the dealer draw until 17 or bust', ->

  describe 'stand', ->
    it 'make the dealer draw until 17 or bust', ->
