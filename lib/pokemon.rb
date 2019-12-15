class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    self.id = id
    self.name = name
    self.type = type
    self.db = db
  end
  
  def save
    sql = <<-SQL
      INSERT INTO pokemon
    SQL
  end
  
  
  
end
