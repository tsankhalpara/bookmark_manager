require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'returns a list of bookmarks' do
      conn = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    conn.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    bookmarks = Bookmark.all

    expect(bookmarks).to include('http://www.makersacademy.com')
    expect(bookmarks).to include('http://www.destroyallsoftware.com')
    expect(bookmarks).to include('http://www.google.com')
    end
  end

  describe '#create' do
    it 'add a new bookmark to the list' do
      # conn = PG.connect(dbname: 'bookmark_manager_test')

      Bookmark.create(url: 'http://www.testbookmark.com')

      expect(Bookmark.all).to include 'http://www.testbookmark.com'
    end
  end
end
