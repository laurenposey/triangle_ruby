require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path' , {:type => :feature}) do
  it ('processes the user entry and returns the type of triangle') do
    visit('/')
    fill_in('side_one', :with=> 3)
    fill_in('side_two', :with=> 4)
    fill_in('side_three', :with=> 5)
    click_button('Go!')
    expect(page).to have_content('scalene triangle')
  end
end
