feature 'view bookmarks' do
  scenario 'visit the bookmarks page' do
    visit('/bookmarks')
    expect(page).to have_content "Bookmarks"
  end
end
