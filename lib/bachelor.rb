def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
      contestant.each do |k,v|
        if v == "Winner"
          full_name = contestant["name"]
          return full_name.split(' ').first
        end 
      end
    end
end

def get_contestant_name(data, occupation)
 person = nil
  data.each do |hash_season, contestants_array|
    contestants_array.find do |contestant|
      if contestant["occupation"] == occupation
        person = contestant["name"]
      end
    end
  end
  person
end

def count_contestants_by_hometown(data, hometown)
  person = []
  data.each do |hash_season, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        person << hash_season
      end
    end
  end
  person.length

end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
