require_relative '../lib/hello'

RSpec.describe Hello do
  it "message return hello" do
    expect(greeting).to eq "hello"
  end
end
