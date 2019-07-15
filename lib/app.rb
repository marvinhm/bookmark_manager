# frozen_string_literal: true

require 'sinatra/base'
require_relative './bookmark_manager'

# this is the BookmarkManager class
class WebBookmarkManager < Sinatra::Base
  enable :sessions
  set :session_secret, 'eleven'

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmark' do
    @bookmarks = BookmarkManager.show_bookmarks
    erb :bookmarks
  end
end
