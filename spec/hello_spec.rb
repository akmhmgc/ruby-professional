require "spec_helper"

RSpec.describe "関数のテスト" do
  it "message return hello" do
    expect(hello).to eq "hello"
  end
end
