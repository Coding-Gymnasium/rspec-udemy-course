# frozen_string_literal: true

# King class
# class King
class Royal
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

# RSpec.describe King do
RSpec.describe Royal do
  # subject(:boris) { King.new("Boris") }
  # let(:louis) { King.new("Louis") }
  subject(:boris) { described_class.new("Boris") }
  let(:louis) { described_class.new("Louis") }

  it "represents a great person" do
    expect(subject.name).to eq("Boris")
    expect(louis.name).to eq("Louis")
  end
end
