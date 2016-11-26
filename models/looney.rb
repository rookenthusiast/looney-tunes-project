require_relative('../db/sql_runner')
require_relative('owner')

class Looney

  attr_accessor :name, :breed, :days_in, :owners_id 
  attr_reader :id

  def initialize(options)
    @name = options['name']
    @breed = options['breed']
    @days_in = options['days_in'].to_i
    @owners_id = options['owner.id'].to_i
    @id = options['id'].to_i 
  end

  def save
    sql = "INSERT INTO looneys (name, breed, days_in, owners_id) 
    VALUES ('#{@name}', '#{@breed}', #{@days_in}, #{@owners_id}) RETURNING *"
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

  def owner()
   sql = "SELECT * FROM looneys WHERE id = #{@id}"
   result = SqlRunner.run( sql )
   owner = Owner.new( result[0] )
   return owner
 end
 



end