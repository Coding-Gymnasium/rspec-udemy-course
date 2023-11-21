# frozen_string_literal: true

# Card class
class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

## TESTS
RSpec.describe Card do
  # let!(:card) { Card.new("Ace", "Spades") }
  # before :each do
  #   @card = Card.new("Ace", "Spades")
  # end
  def card
    Card.new("Ace", "Spades")
  end

  it "has a suit" do
    expect(card.suit).to eql("Spades")
  end

  it "has a rank" do
    expect(card.rank).to eql("Ace")
  end
end
