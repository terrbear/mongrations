Rails::Generator::Commands::Base.class_eval do
  def next_migration_string(padding = 3)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end
end

class MongrationGenerator < Rails::Generator::NamedBase

	def manifest
		record do |m|
			m.directory File.join('db/mongrations')
			m.migration_template 'mongration.rb', 'db/mongrations'
		end
	end
end
