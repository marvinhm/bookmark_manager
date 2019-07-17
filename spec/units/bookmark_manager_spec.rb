# frozen_string_literal: true

require 'bookmark_manager'

describe BookmarkManager do
  subject(:bookmark_manager) { described_class.new }
  describe '#show_bookmarks' do
    it 'returns bookmarks' do

      bookmark = BookmarkManager.create(url: 'http://www.makersacademy.com', title: 'Makers')
      BookmarkManager.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
      BookmarkManager.create(url: 'http://www.google.com', title: 'Google')

      bookmarks = BookmarkManager.show_bookmarks

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a BookmarkManager
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'

    end
  end
  describe '.create' do
    it 'Should create a new bookmark' do
      bookmark = BookmarkManager.create(url: 'http://www.makersacademy.com', title: 'Makers')
      persisted_data = PG.connect(dbname: 'bookmark_manager_test').query("SELECT * FROM bookmarks WHERE id = #{bookmark.id};")

      expect(bookmark).to be_a BookmarkManager
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'Makers'
      expect(bookmark.url).to eq 'http://www.makersacademy.com'

    end
  end
end
