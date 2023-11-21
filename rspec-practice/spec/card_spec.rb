# frozen_string_literal: true

# Card class
class Card
  attr_reader :type

  def initialize(type)
    @type = type
  end
end

RSpec.describe "Card" do
  it "has a type" do
    card = Card.new("Ace of Spades")
    expect(card.type).to eql("Ace of Spades")
  end
end
