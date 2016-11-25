require_relative('../db/sql_runner')

class Looney

  attr_accessor :name, :breed, :days_in 
  attr_reader :id

  def initialize(options)
    @name = options['name']
    @breed = options['breed']
    @days_in = options['days_in'].to_i
    @id = options['id'].to_i 
  end

  def save
    sql = "INSERT INTO looneys (name, breed, days_in) 
    VALUES ('#{name}', '#{breed}', #{days_in}) RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def self.all
    sql = "SELECT * FROM looneys"
    results = SqlRunner.run(sql)
    return results.map { |hash| Looney.new( hash ) }
  end

  def self.find( id )
    sql = "SELECT * FROM looneys WHERE id=#{id}"
    looney = SqlRunner.run( sql )
    result = Looney.new( looney.first )
    return result
  end

  def self.delete_all
    sql ="DELETE FROM looneys"
    result = SqlRunner.run(sql)
  end



end