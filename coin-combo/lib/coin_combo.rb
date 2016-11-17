require('pry')

class Fixnum
  define_method(:coin_combo) do
      amount = self
      penny = 1
      nickel = 5
      dime = 10
      quarter = 25

      penny_counter = 0
      nickel_counter = 0
      dime_counter = 0
      quarter_counter = 0

      until quarter > amount do
        quarter_counter +=1
        amount = amount - quarter
      end

      until dime > amount do
        dime_counter += 1
        amount = amount - dime
      end

      until nickel > amount do
        nickel_counter +=1
        amount = amount - nickel
      end

      until penny % (amount + 1) == 0 do
        penny_counter += 1
        amount = amount - penny
      end
      "#{quarter_counter} quarters, #{dime_counter} dimes, #{nickel_counter} nickels, #{penny_counter} pennies"
    end
  end
