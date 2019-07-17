# frozen_string_literal: true

require 'bookmark_manager'

describe BookmarkManager do
  subject(:bookmark_manager) { described_class.new }
  describe '#show_bookmarks' do
    it 'returns bookmarks' do

      BookmarkManager.create('http://www.makersacademy.com')
      BookmarkManager.create('http://www.destroyallsoftware.com')
      BookmarkManager.create('http://www.google.com')

      bookmark_manager = BookmarkManager.show_bookmarks
      expect(bookmark_manager).to include 'http://www.google.com'
      expect(bookmark_manager).to include 'http://www.makersacademy.com'
      expect(bookmark_manager).to include 'http://www.destroyallsoftware.com'
    end
  end
  describe '.create' do
    it 'Should create a new bookmark' do
      BookmarkManager.create('http://makers.com')

      expect(BookmarkManager.show_bookmarks).to include('http://makers.com')
    end
  end
end
