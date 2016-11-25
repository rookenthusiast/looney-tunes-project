class Looney

  attr_accessor :name, :breed, :days_in 
  attr_reader :id

  def initiliaze(options)
    @name = options['name']
    @breed = options['breed']
    @days_in = option['days_in'].to_i
    @id = option['id'].to_i
  end

  def save
    sql = "INSERT INTO looneys (name, breed, days_in) 
    VALUES ('#{name}', '#{breed}', #{days_in}) RETURNING *"
    result = SqlRunner.run(sql)
  end

  def Self.all
    sql = "SELECT * FROM looneys"
    results = SqlRunner.run(sql)
    return results.map { |hash| Looney.new( hash ) }
  end



end