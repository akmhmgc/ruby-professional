require "spec_helper"

RSpec.describe "改札プログラムのテスト" do
  it "運賃が足りていて下車するとtrueを返す" do
    umeda = Gate.new(:umeda)
    juso = Gate.new(:juso)

    ticket = Ticket.new(150)

    umeda.enter(ticket)
    expect(juso.exit(ticket)).to be true
  end

  it "運賃が足りていなくて下車するとfalseを返す" do
    umeda = Gate.new(:umeda)
    mikuni = Gate.new(:mikuni)

    ticket = Ticket.new(150)

    umeda.enter(ticket)
    expect(mikuni.exit(ticket)).to be false
  end

  it "運賃が足りていなくて下車するとtrueを返す" do
    umeda = Gate.new(:juso)
    mikuni = Gate.new(:mikuni)

    ticket = Ticket.new(150)

    umeda.enter(ticket)
    expect(mikuni.exit(ticket)).to be true
  end
end
