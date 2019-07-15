require 'bookmark_manager'

describe BookmarkManager do
  subject(:bookmark_manager) {described_class.new}
  describe '#show_bookmarks' do
    it 'returns bookmarks' do
      expect(bookmark_manager.show_bookmarks).to eq("http://google.com")
    end
  end
end
