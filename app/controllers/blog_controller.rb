class BlogController < ApplicationController
  def index
      db = SQLite3::Database.open "db/development.sqlite3"
      @stm = db.query "select * from yazilarim"
  end
end
