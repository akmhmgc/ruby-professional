# 改札機プログラムをクラスを使って実装

class Gate
  GATES = %i[umeda juso mikuni]
  FEES = [150, 190]

  attr_reader :gate

  def initialize(gate)
    @gate = gate
  end

  def enter(ticket)
    ticket.stamped(@gate)
  end

  def exit(ticket)
    ticket.fare >= calc_fee(ticket.stamped_at, gate)
  end

  private

  def calc_fee(from, to)
    distance = GATES.index(to) - GATES.index(from)
    FEES[distance - 1]
  end
end

class Ticket
  attr_reader :fare, :stamped_at

  def initialize(fare)
    @fare = fare
  end

  def stamped(gate)
    @stamped_at = gate
  end
end
