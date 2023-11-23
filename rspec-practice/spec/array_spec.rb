# frozen_string_literal: true

##
# Array test
RSpec.describe Array do
  it "starts empty" do
    expect(subject.length).to eq(0)
  end

  it "can add a new element" do
    expect(subject.length).to eq(0)
    subject.push("New Element")
    expect(subject.length).to eq(1)
  end
end
