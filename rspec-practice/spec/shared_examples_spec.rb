# frozen_string_literal: true

# Typically the shared examples would be in some helper file and imported in the spec.
RSpec.shared_examples "a Ruby object with three elements" do
  it "returns the number of items" do
    expect(subject.length).to eq(3)
  end
end

RSpec.shared_examples "length of 5" do
  it "has a length of 5" do
    expect(subject.length).to eq(5)
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples "a Ruby object with three elements"
end

RSpec.describe String do
  subject { "abc" }
  include_examples "a Ruby object with three elements"
end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3 } }
  include_examples "a Ruby object with three elements"
end

# SausageLink class
class SausageLink
  def length
    5
  end
end

RSpec.describe SausageLink do
  subject { described_class.new }
  include_examples "length of 5"
end
