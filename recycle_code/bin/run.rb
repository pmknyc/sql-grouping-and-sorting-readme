require_relative 'environment'

db = SQLite3::Database.new('../db/lab_database.db').mode(column)
sql_runner = SQLRunner.new(db)

sql_runner.execute_sql_file