# frozen_string_literal: true

# Card class
class Card
  attr_reader :rank, :suite

  def initialize(rank, suite)
    @rank = rank
    @suite = suite
  end
end

## TESTS
RSpec.describe Card do
  let!(:card) { Card.new("Ace", "Spades") }

  it "has a suite" do
    expect(card.suite).to eql("Spades")
  end

  it "has a rank" do
    expect(card.rank).to eql("Ace")
  end
end
