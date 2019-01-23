def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    contestant.each do |key, value|
      if value == "Winner"
        name = contestant["name"]
        return name.split(' ').first 
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, details|
    details.each do |contestant|
      contestant.each do |key,value|
        if value == occupation
          name = contestant["name"]
          return name 
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0 
  data.each do |season, details|
    details.each do |contestant|
      contestant.each do |key, value|
        if value == hometown
          count += 1 
        end
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, details|
    details.each do |contestant|
      contestant.each do |value, key|
        if key == hometown
          occupation = contestant["occupation"]
          return occupation
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
end
