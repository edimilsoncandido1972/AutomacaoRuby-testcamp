require "pg"

class Database
  def delete(title)
    conn = PG.connect(host: "104.237.137.68", dbname: "nflix", user: "postgres", password: "qaninja")
    conn.exec("DELETE from public.movies where title = '#{title}'")
  end
end
