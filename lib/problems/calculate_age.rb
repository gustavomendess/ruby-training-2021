require 'date'

class CalculateAge
  def self.calculate(birth_day, birth_month, birth_year)
    current_day = DateTime.now.day
    current_month = DateTime.now.month
    current_year = DateTime.now.year
    month = [31, 28, 31, 30, 31, 30, 31,
             31, 30, 31, 30, 31]
    if (birth_day > current_day)
      current_month = current_month - 1
      current_day = current_day + month[birth_month - 1]
    end

    if (birth_month > current_month)
      current_year = current_year - 1
      current_month = current_month + 12
    end

    calculated_day = current_day - birth_day
    calculated_month = current_month - birth_month
    calculated_year = current_year - birth_year
    puts "You present age is #{calculated_year} years, #{calculated_month} months and #{calculated_day} days"
  end
end

CalculateAge.calculate(6, 8, 2001)
