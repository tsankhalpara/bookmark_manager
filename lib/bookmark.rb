require 'pg'

class Bookmark

  def self.all
    conn = PG.connect(dbname: 'bookmark_manager_test')
    bookmarks = conn.exec("SELECT * FROM bookmarks;")
    bookmarks.map do |row|
      row["url"]
    end
  end
end
