feature 'Test for bookmark root' do
  scenario 'Visiting bookmark page' do
    visit('/bookmark')
    expect(page).to have_content "http://google.com"
    expect(page).not_to have_content "error"
  end
end
