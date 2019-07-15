# frozen_string_literal: true

require 'bookmark_manager'

describe BookmarkManager do
  subject(:bookmark_manager) { described_class.new }
  describe '#show_bookmarks' do
    it 'returns bookmarks' do
      bookmark_manager = BookmarkManager.show_bookmarks
      expect(bookmark_manager).to include 'http://www.google.com'
      expect(bookmark_manager).to include 'http://www.makersacademy.com'
      expect(bookmark_manager).to include 'http://www.destroyallsoftware.com'
    end
  end
end
