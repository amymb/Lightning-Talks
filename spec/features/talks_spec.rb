require 'rails_helper'

feature 'Talks' do

 scenario 'User can create talk' do
  visit root_path
  click_on 'New Talk'
  fill_in 'Speaker', with: 'George'
  click_on 'Add Talk'
  expect(page).to have_content('Talk was successfully added')
  end
end
