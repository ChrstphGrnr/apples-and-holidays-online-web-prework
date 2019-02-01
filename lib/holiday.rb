require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  
  
  holiday_hash[:summer][:fourth_of_july].at(1)
  
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter].each do |key, value|
    value.push(supply)
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day].push(supply)

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  
  # return an array of all of the supplies that are used in the winter season
  
  supplies = holiday_hash[:winter].values 
  supplies.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
      holiday.each do |day, decorations|
        day = day.to_s.split("_")
        day.each {|value|  value.capitalize!}
        puts "  #{day.join(" ")}: #{decorations.join(", ")}"
      end
  end
end


## alternative code for the above #all_supplies_in_holidays

# holiday_hash.each do |season, holiday|
#    puts "#{season.capitalize}:"
#      holiday.each do |day, decorations|
#        day_mod = day.to_s
#        day_mod_ary = day_mod.split("_")
#        day_mod_ary.each {|value|  value.capitalize!}
#        puts "  #{day_mod_ary.join(" ")}: #{decorations.join(", ")}"
#      end
#  end


def all_holidays_with_bbq(holiday_hash)
  
# given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_days = []
  holiday_hash.each do |season, days| 
    days.each do |decorations| 
    if decorations.include?("BBQ")
      bbq_days << days 
    end
    bbq_days
  end

end







