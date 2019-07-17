feature 'Adding a new bookmark' do
    scenario 'User adds a new bookmark' do
      visit('/')
      click_on('View bookmarks')
      click_on('Add')
      fill_in 'url', with: ("http://bbc.co.uk")
      click_on("Add")
      expect(page).to have_content("http://bbc.co.uk")
    end
end
