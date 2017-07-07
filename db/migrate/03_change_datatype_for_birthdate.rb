class ChangeDatatypeForBirthdate < ActiveRecord::Migration

  connection = ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/students.sqlite"
  )

  sql = <<-SQL
  CREATE TABLE IF NOT EXISTS new_columns (
  id INTEGER PRIMARY KEY,
  name TEXT
  )
  SQL

  ActiveRecord::Base.connection.execute(sql)


  def change
    change_column :students, :birthdate, :datetime
    end

end
