# frozen_string_literal: true

require 'bookmark_manager'

describe BookmarkManager do
  subject(:bookmark_manager) { described_class.new }
  describe '#show_bookmarks' do
    it 'returns bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmark_manager = BookmarkManager.show_bookmarks
      expect(bookmark_manager).to include 'http://www.google.com'
      expect(bookmark_manager).to include 'http://www.makersacademy.com'
      expect(bookmark_manager).to include 'http://www.destroyallsoftware.com'
    end
  end
end
