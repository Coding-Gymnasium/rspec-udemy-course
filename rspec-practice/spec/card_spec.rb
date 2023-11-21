# frozen_string_literal: true

# Card class
class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

## TESTS
RSpec.describe Card do
  # Let provides separation between different examples, memoization within an example and lazy loading.
  let(:card) { Card.new("Ace", "Spades") }

  # With lazy loading. Use a bang after the let. It behaves like a before each block.
  # let!(:card) { Card.new("Ace", "Spades") }

  it "has a suit" do
    expect(card.suit).to eql("Spades")
  end

  it "has a rank" do
    expect(card.rank).to eql("Ace")
  end

  it "can change a rank" do
    expect(card.rank).to eql("Ace")
    card.rank = "Queen"
    expect(card.rank).to eq("Queen")
  end
end
