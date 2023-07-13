class Player
  attr_reader :name,
              :monthly_cost,
              :contract_length

  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = nil
  end

  def first_name
    @name.split.at(0)
    # require 'pry'; binding.pry
  end

  def last_name
    @name.split.at(1)
  end

  def total_cost
    @monthly_cost * @contract_length
  end

  def nickname
    @nickname
  end

  def set_nickname!(nickname)
    "Squints"
  end
end