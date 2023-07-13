class Team
  attr_reader :team_name,
              :city,
              :roster

  def initialize(team_name, city)
    @team_name = team_name
    @city = city
    @roster = []
  end

  def player_count
    @roster.count()
  end

  def add_player(player)
    @roster << player
  end

  def long_term_players
    long_term = []
    @roster.find_all do |roster|
      if roster.contract_length >= 24
        long_term << roster
      end
      # require 'pry'; binding.pry
    end
    long_term
  end

  def short_term_players
    short_term = []
    @roster.find_all do |roster|
      if roster.contract_length <= 23
        short_term << roster
      end
    end
    short_term
  end

  def total_value
    @roster.each do |roster|
      roster.contract_length * roster.monthly_cost
    end
    # @roster.monthly_cost * @roster.contract_length
  end
end