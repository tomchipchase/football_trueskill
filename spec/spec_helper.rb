load_path = File.expand_path('../../lib', __FILE__)
require 'require_all'
require_all load_path
require 'faker'
require 'fabrication'

def in_memory_db(filename = 'test.db')
  @db ||= begin
            Sequel.extension :migration
            db = Sequel.connect("sqlite:memory:")
            migration_path = File.expand_path('../../migrations', __FILE__)
            Sequel::Migrator.apply(db, migration_path)
            db
          end
end
