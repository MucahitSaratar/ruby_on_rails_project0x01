class BlogController < ApplicationController
  def index
      db = SQLite3::Database.open "db/development.sqlite3"
      id = params[:id].to_i
      p id
      @stm = db.query "select * from yazilarim where id > ? and id < ?",id*10,(id+1)*10
  end
end
