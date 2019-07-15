feature 'Test for index page' do
  scenario 'Visiting index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
    expect(page).not_to have_content "error"
  end
end
