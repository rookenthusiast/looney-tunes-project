class Owner
  
  attr_accessor :name 
  attr_reader :id

def initiliaze(options)
@name = options['name']
@id = options['id'].to_i
end

def save
  sql = "INSERT INTO owners (name) 
  VALUES ('#{name}') RETURNING *"
  results = SqlRunner.run(sql)
  @id = results.first()['id'].to_i
end

def Self.all
  sql = "SELECT * FROM owners"
  results = SqlRunner.run(sql)
  return results.map { |hash| Owner.new( hash ) }
end
end