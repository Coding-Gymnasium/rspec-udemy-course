# frozen_string_literal: true

# falsy values --- false and nil
# truthy values --- everything else

RSpec.describe "be matchers" do
  it "can test for truthiness" do
    expect(true).to be_truthy
    expect("Hello").to be_truthy
    expect(5).to be_truthy
    expect(0).to be_truthy
    expect(-1).to be_truthy
    expect(3.14).to be_truthy
    expect([]).to be_truthy
    expect([1, 2]).to be_truthy
    expect({}).to be_truthy
    expect(:symbol).to be_truthy
  end

  it "can test for falsy" do
    expect(nil).to be_falsy
    expect(false).to be_falsy
  end

  it "can test for nil" do
    expect(nil).to be_nil

    my_hash = {a: 1}
    expect(my_hash[:b]).to be_nil
  end
end
