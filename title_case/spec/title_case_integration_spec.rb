require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('processes the user input and returns it title cased') do
    visit('/')
    fill_in('title', :with => "harry potter and the chamber of secrets")
    click_button('Send')
    expect(page).to have_content('Harry Potter and the Chamber of Secrets')
  end
end
