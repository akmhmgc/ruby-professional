require "spec_helper"

RSpec.describe "conver_length" do
  it "message return hello" do
    expect(convert_length(1,"m","in")).to eq 39.37
  end
end
