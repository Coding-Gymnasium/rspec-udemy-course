# frozen_string_literal: true

# Card Deck class
class Deck
  def self.build
    # build a bunch of cards
  end
end

# Card Game class
class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it "can only implement class methods that are defined on a class" do
    # class_double(Deck, build: %w[Ace Queen], shuffle: %w[Queen Ace])
    # deck_klass = class_double("Deck", build: %w[Ace Queen]).as_stubbed_const
    deck_klass = class_double(Deck, build: %w[Ace Queen]).as_stubbed_const

    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(%w[Ace Queen])
  end
end
