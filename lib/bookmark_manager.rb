# frozen_string_literal: true

require 'pg'

# this is the model for Bookmark Manager
class BookmarkManager
  def self.show_bookmarks
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end
end
