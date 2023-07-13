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
    @roster.count
  end

  def add_player(new_player)
    @roster << new_player
  end

  def long_term_players
    @roster.find_all do |player|
      player.contract_length > 24
      end
      # require 'pry'; binding.pry
    # end
    # long_term
  end

  def short_term_players
    @roster.find_all do |player|
      player.contract_length <= 24
    end
  end

  def total_value
    # @roster.sum do |player|
    #   player.monthly_cost * player.contract_length
    # end
    @roster.sum do |player|
      player.total_cost
    end
  end

  def details
    {
      "total_value" => total_value,
      "player_count" => player_count
    }
  end
end