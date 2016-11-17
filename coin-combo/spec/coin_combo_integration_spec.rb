require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the home path', {:type => :feature}) do
  it('it processes the user\'s input and returns correct amount in coins') do
    visit('/')
    fill_in('coins', :with => 74)
    click_button('what are my coins')
    expect(page).to have_content('2 quarters, 2 dimes, 0 nickels, 4 pennies')
  end
end
