# frozen_string_literal: true

feature 'Test for bookmark root' do
  scenario 'Visiting bookmark page' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    visit('/')
    click_on('View bookmarks')
    expect(page).to have_content 'http://www.google.com'
    expect(page).not_to have_content 'error'
  end
end
