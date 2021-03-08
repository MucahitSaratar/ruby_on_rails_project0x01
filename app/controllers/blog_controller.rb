class BlogController < ApplicationController
    def index
        db = SQLite3::Database.open "db/development.sqlite3"
        @id = params[:id].to_i
        @stm = db.query "select * from yazilarim where id > ? and id < ?",@id*10,(@id+1)*10
  end
  def read
      db = SQLite3::Database.open "db/development.sqlite3"
      @id = params[:id].to_i
      stm = db.query "select * from detayliyazi where id=?",@id
      @row = stm.next
      if @row == nil
        @basligim = "hata"
        @icerik = "hatali istek"
      else
        @basligim = @row[1]
        @url = @row[3]
        @icerik = @row[2].split('')
      end
  end
end
