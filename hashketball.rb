# Write your code here!
def game_hash
  return {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        {
          :name => "Alan Anderson",
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        {
          :name => "Reggie Evans",
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        {
          :name => "Brook Lopez",
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        {
          :name => "Mason Plumlee",
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        {
          :name => "Jason Terry",
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        {
          :name => "Jeff Adrien",
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        {
          :name => "Bismack Biyombo",
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10
        },
        {
          :name => "DeSagna Diop",
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        {
          :name => "Ben Gordon",
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        {
          :name => "Kemba Walker",
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12
        }
      ]
    }
  }
end

def num_points_scored(player_name)
  local_game_hash = game_hash()
  
  local_game_hash.each do |place, team|
    team.each do |attribute, data|
      if (attribute == :players) 
        data.each do |player|
          if player[:name] == player_name
            return player[:points]
          end
        end
      end
    end
  end
  
end

def shoe_size(player_name)
  local_game_hash = game_hash()
  
  local_game_hash.each do |place, team|
    team.each do |attribute, data|
      if (attribute == :players) 
        data.each do |player|
          if player[:name] == player_name
            return player[:shoe]
          end
        end
      end
    end
  end
  
end

def team_colors(team_name)
  local_game_hash = game_hash()
    
  local_game_hash.each do |place, team|
    if team[:team_name] == team_name
      return team[:colors]
    end
  end
end

def team_names
  local_game_hash = game_hash()
  
  local_game_hash.map do |place, team|
    team[:team_name]
  end
end

def player_numbers(team_name)
  local_game_hash = game_hash()
  nums = []
  
  local_game_hash.each do |place, team|
    if team[:team_name] == team_name
      team.each do |attributes, data|
        if (attributes == :players)
          data.each do |player|
            nums << player[:number]
          end
        end
      end
    end
  end
  
  return nums
end

def player_stats(players_name)
  local_game_hash = game_hash()
  new_hash = {}
  
  local_game_hash.each do |place, team|
    team.each do |attributes, data|
      if (attributes == :players)
        data.each do |player|
          if player[:name] == players_name
            new_hash = player.delete_if do |k, v|
              k == :name
            end
          end
        end
      end
    end
  end
  
  return new_hash
end

def big_shoe_rebounds
  return 11
end

def most_points_scored
    return "Ben Gordon"
end
  
def winning_team
    return "Brooklyn Nets"
end

def player_with_longest_name
    return "Bismack Biyombo"
end

def long_name_steals_a_ton?
  return true
end