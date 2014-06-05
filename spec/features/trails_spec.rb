require 'spec_helper'

feature 'CRUD favorite trails' do
  scenario 'User can create a list of trails' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a Trail'
    fill_in 'Name', with: 'Sinatas'
    fill_in 'Difficulty', with: 4
    click_on 'Add Trail'
    expect(page).to have_content 'Sinatas'
    expect(page).to have_content 4
  end
end