class BlogController < ApplicationController
  def index
      db = SQLite3::Database.open "db/development.sqlite3"
      stm = db.query "select * from yazilarim"
      cek = stm.next
      @id = cek[0]
      @baslik = cek[1]
      @logo = cek[2]
      @icerik = cek[3]
  end
end
