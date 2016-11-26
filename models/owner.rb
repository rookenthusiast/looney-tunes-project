require_relative('../db/sql_runner')
require_relative('looney')

class Owner
  
  attr_accessor :name 
  attr_reader :id

  def initialize(options)
    @name = options['name']
    @id =  options['id'].to_i
  end

  def save()
    sql = "INSERT INTO owners (name) 
    VALUES ('#{name}') RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def self.all
    sql = "SELECT * FROM owners"
    results = SqlRunner.run(sql)
    return results.map { |hash| Owner.new( hash ) }
  end

  def self.find( id )
    sql = "SELECT * FROM owners WHERE id=#{id}"
    owner = SqlRunner.run( sql )
    result = Owner.new( owner.first )
    return result
  end

  def self.delete_all
    sql ="DELETE FROM owners"
    result = SqlRunner.run(sql)
  end

  

end