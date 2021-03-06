class BlogController < ApplicationController
  def index
      db = SQLite3::Database.open "db/development.sqlite3"
      id = 1
      stm = db.query "select * from yazilarim where id=?",id
      cek = stm.next
      @degiskenim = cek['logo']
  end
end
