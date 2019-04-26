require 'capybara/rspec'

feature 'Viewing Bookmarks' do
  scenario 'visit the bookmarks page' do
    conn = PG.connect(dbname: 'bookmark_manager_test')
   conn.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
   conn.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
   conn.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

   visit('/bookmarks')

   expect(page).to have_content "http://www.makersacademy.com"
   expect(page).to have_content "http://www.destroyallsoftware.com"
   expect(page).to have_content "http://www.google.com"

  end
end
