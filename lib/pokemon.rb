class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    self.id = id
    self.name = name
    self.type = type
    self.db = db
  end
  
  def self.save(name, type, db)
    new = self.new(id: nil, name: name, type: type, db: db)
    
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?, ?);
    SQL
    
    db.execute(sql, name, type)
    new.id = db.execute("SELECT last_insert_rowid() FROM pokemon;")[0][0]
  end
  
  
  
end
