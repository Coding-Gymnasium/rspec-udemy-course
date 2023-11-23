# frozen_string_literal: true

##
# When you pass on a Class as the subject - Rspec.describe <class> do ... - Rspec instanciates the subject for us.
# In the case below that means we can use subject as a new hash, for example.
RSpec.describe Hash do
  it "should start off empty" do
    expect(subject.length).to eq(0)
    subject[:some_key] = "Some value"
    expect(subject.length).to eq(1)
  end

  it "is isolated between examples" do
    expect(subject.length).to eq(0)
  end
end
