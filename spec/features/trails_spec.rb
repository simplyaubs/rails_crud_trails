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

  scenario 'User can update a trail' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a Trail'
    fill_in 'Name', with: 'Sinatas'
    fill_in 'Difficulty', with: 4
    click_on 'Add Trail'
    expect(page).to have_content 'Sinatas'
    expect(page).to have_content 4
    click_on 'Sinatas'
    click_on 'Edit'
    fill_in 'Name', with: 'Chautauqua'
    fill_in 'Difficulty', with: 3
    click_on 'Update'
    expect(page).to have_content 'Chautauqua'
    expect(page).to have_content 3
    expect(page).to_not have_content 'Sinatas'
    expect(page).to_not have_content 4
  end

  scenario 'User can delete a trail' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a Trail'
    fill_in 'Name', with: 'Sinatas'
    fill_in 'Difficulty', with: 4
    click_on 'Add Trail'
    expect(page).to have_content 'Sinatas'
    expect(page).to have_content 4
    click_on 'Sinatas'
    click_on 'Delete'
    expect(page).to_not have_content 'Sininats'
    expect(page).to_not have_content 4
  end
end