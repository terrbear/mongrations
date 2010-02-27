# MigrationProxy is used to defer loading of the actual migration classes
# until they are needed
module MongoMapper
  class MigrationProxy

    attr_accessor :name, :version, :filename

    delegate :migrate, :announce, :write, :to=>:migration

    private

      def migration
        @migration ||= load_migration
      end

      def load_migration
        load(filename)
        name.constantize
      end

  end
end