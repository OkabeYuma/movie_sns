class Tasks::Batch
  URIforward  = 'https://api.themoviedb.org/3/movie/'
  URIbackward = '?api_key=16b6f7575cdc4e7a9f40a1f20b7b61d9'
  POSTERforward  = 'https://image.tmdb.org/t/p/w185_and_h278_bestv2'
  def self.execute
    require 'net/http'
    require 'uri'
    require 'json'
    require 'date'
    db = SQLite3::Database.new("db/development.sqlite3")
    db.transaction do
      sql = "insert into movies(title,poster_path,genre,overview,vote_average,release_date,created_at,updated_at) values (?, ?, ?, ?, ?, ?,?,?)"
      for num in 301..600 do
      # for num in 100..300 do
      # for num in 2..100 do
        uri = URI.parse(URIforward + num.to_s + URIbackward)
        json = Net::HTTP.get(uri)
        result = JSON.parse(json)
      
        #puts result
        title = result['title'].to_s
        poster_path = POSTERforward + result['poster_path'].to_s
        genre = result["genres"][0]["name"].to_s rescue nil
        overview = result['overview'].to_s
        vote_average = result['vote_average'].to_s
        release_date = result['release_date'].to_s
        created_at = "2008-08-19 15:08:19"
        updated_at = "2008-08-19 15:08:19"
        if !title.empty?
          db.execute(sql, title, poster_path, genre, overview, vote_average, release_date, created_at,updated_at)
        end
      end
    end
    db.close
  end
end