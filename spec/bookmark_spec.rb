require 'bookmark'

describe Bookmark do
  describe '#list' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.list
      expect(bookmarks).to include('https://www.google.com')
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.missguided.co.uk')
    end
  end
end
