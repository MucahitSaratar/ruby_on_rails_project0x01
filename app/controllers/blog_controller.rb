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
      p @row
      if @row == nil
        @basligim = "<h1>Hatalı istek</h1>"
      else
        @basligim = @row[1]
        @icerik = @row[2]
        @icerik["---"] = "<div class='code'>"
        @icerik["--"] = "</div>"
      end
  end
end
