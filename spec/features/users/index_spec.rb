require 'spec_helper'

feature 'users/index' do

  scenario 'allows you to create a new user' do
    visit '/'
    click_on 'New User'
    fill_in 'Email', :with => 'steven.magelowitz@gmail.com'
    click_on 'Save'
    expect(page).to have_content('steven.magelowitz@gmail.com')
  end
end