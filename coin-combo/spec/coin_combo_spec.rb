require('rspec')
require('coin_combo')

describe('Fixnum#coin_combo') do
  it('will return 4 pennies for the change of 4') do
    expect(4.coin_combo()).to(eq('0 quarters, 0 dimes, 0 nickels, 4 pennies'))
  end
  it('will return 3 pennies and 1 nickel for the change of 8') do
    expect(8.coin_combo()).to(eq('0 quarters, 0 dimes, 1 nickels, 3 pennies'))
  end
  it('will return 1 dime, 1 nickel, and 3 pennies for the change of 18') do
    expect(18.coin_combo()).to(eq('0 quarters, 1 dimes, 1 nickels, 3 pennies'))
  end
  it('will return 1 quarter, 1 dime, 1 nickel, and 3 pennies for the change of 43') do
    expect(43.coin_combo()).to(eq('1 quarters, 1 dimes, 1 nickels, 3 pennies'))
  end
  it('will return 2 quarters, 2 dimes, and 4 pennies for the change of 74') do
    expect(74.coin_combo()).to(eq('2 quarters, 2 dimes, 0 nickels, 4 pennies'))
  end
end
