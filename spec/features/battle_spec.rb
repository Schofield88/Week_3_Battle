require './app.rb'

describe 'home page visit', type: :feature do
  it 'Has the correct text' do
  visit '/'
  expect(page).to have_content 'Testing infrastructure working!'
  end
end