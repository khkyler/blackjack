class window.CardView extends Backbone.View
  className: 'card'

  template: _.template '<%= rankName %> of <%= suitName %>'

  initialize: -> @render()

  render: ->
    @$el.children().detach()
    @$el.html @template @model.attributes
    @$el.addClass 'red' if @.model.attributes.suit == 1
    @$el.addClass 'red' if @.model.attributes.suit == 3
    @$el.addClass 'covered' unless @model.get 'revealed'

