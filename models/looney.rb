require_relative('../db/sql_runner')
require_relative('owner')
require('pry-byebug')

class Looney

  attr_accessor :name, :breed, :days_in, :owners_id , :url
  attr_reader :id

  def initialize(options)
    @name = options['name']
    @breed = options['breed']
    @days_in = options['days_in'].to_i
    owner_id = options['owners_id']

    owner_id = nil if owner_id == ""
    @owners_id = owner_id ?  owner_id.to_i : 'null'

    @url = options['url'] || 'null'
    
    @id = options['id'].to_i 
  end

  def save
    sql = "INSERT INTO looneys (name, breed, days_in, owners_id, url) 
    VALUES ('#{@name}', '#{@breed}', #{@days_in}, #{@owners_id}, '#{@url}') RETURNING *"
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
   sql = "SELECT * FROM owners WHERE id = #{@owners_id}"
   result = SqlRunner.run( sql )
   owner = Owner.new( result[0] )
   return owner
 end

 def self.rub_out(id)
  sql = "DELETE FROM looneys WHERE id = #{id}"
  result = SqlRunner.run(sql)
end
 
 def self.update( options )
   sql = "UPDATE looneys SET owners_id = #{options['owners_id']} WHERE id = '#{options['id']}'"
   SqlRunner.run( sql )
 end



end



