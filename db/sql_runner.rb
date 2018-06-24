require( 'pg' )

class SqlRunner

  def self.run( sql, values = [] )
    begin
      #db = PG.connect({ dbname: 'codeclangym', host: 'localhost' })
      db = PG.connect({ dbname: 'd2ldsc995spbnq', host: 'ec2-54-243-40-26.compute-1.amazonaws.com', port: 5432, user: 'nddhtttxbcsmst',password: '68761dffe1d92a119338855c030dd0d86474a14ece937c0503887e1efc63a5ad' })
      db.prepare("query", sql)
      result = db.exec_prepared( "query", values )
    ensure
      db.close() if db != nil
    end
    return result
  end

end
