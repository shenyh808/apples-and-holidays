require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july ][1]
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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter

      holiday.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |seasons, holidays|
    if seasons == season
      holiday_hash[seasons][holiday_name] = supply_array
    end
  end

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash[:winter].each  do |holidays, supplies|
    holiday_hash[:winter][holidays] = [supplies].each do |item|
      winter_supplies << item
      winter_supplies.flatten!.uniq!
    end
  end
  winter_supplies
end

def all_supplies_in_holidays(hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  temp = []
  hash.each do |seasons, holidays|
    puts "#{seasons.to_s.capitalize}:"
    hash[seasons].each do |holidays, supplies|
      # first, manipulate the holiday symbols
      temp = holidays.to_s.split("_")
      temp.collect! {|item| item.capitalize!}
      #then, manipulate the supply string
      puts "  #{temp.join(" ")}: #{supplies.join(", ")}"
      end
    end
  

end

def all_holidays_with_bbq(hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
   hash.each do |seasons, holidays|
     hash[seasons].each do |holidays, supplies|
       hash[seasons][holidays].each do |supplies|
         if supplies == "BBQ"
           bbq_holidays << holidays
         end
       end
     end
   end
   bbq_holidays
  
end







