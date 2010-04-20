# Include hook code here
require "mongo_mapper"

require File.join(File.dirname(__FILE__), "lib", "mongration")
require File.join(File.dirname(__FILE__), "lib", "mongo_mapper", "mongration")
require File.join(File.dirname(__FILE__), "lib", "mongo_mapper", "migration_proxy")
require File.join(File.dirname(__FILE__), "lib", "mongo_mapper", "migrator")
require File.join(File.dirname(__FILE__), "lib", "mongo_mapper", "schema_migration")