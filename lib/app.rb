require 'sinatra/base'


class WebBookmarkManager < Sinatra::Base
  enable :sessions
  set :session_secret, "eleven"

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmark' do
    session['bookmark_manager'] = BookmarkManager.new
    @bookmarks = session['bookmark_manager'].show_bookmarks
    erb :bookmarks
  end

end
