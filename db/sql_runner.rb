require( 'pg' )

class SqlRunner

  def self.run( sql, values = [] )
    begin
      db = PG.connect({ dbname: 'codeclangym', host: 'localhost' })
      # db = PG.connect({ dbname: 'ddp3hl5nnj2sp2', host: 'ec2-54-163-229-212.compute-1.amazonaws.com', port: 5432, user: 'svvswbhklvbaeg',
      #   password: '33922a9226bd9278a663efb230673eb1c787cc11cdc62302ba27b661dbca2b92' })
      db.prepare("query", sql)
      result = db.exec_prepared( "query", values )
    ensure
      db.close() if db != nil
    end
    return result
  end

end
