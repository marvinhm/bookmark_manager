# frozen_string_literal: true

feature 'Test for bookmark root' do
  scenario 'Visiting bookmark page' do
    visit('/')
    click_on('View bookmarks')
    expect(page).to have_content 'List of bookmarks'
    expect(page).not_to have_content 'error'
  end
end
