# frozen_string_literal: true

##
# Test array class
RSpec.describe Array do
  subject(:sally) { [1, 2] }

  it "it has two elements" do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it "creates a new object for a new example" do
    expect(sally).to eq([1, 2])
  end
end
