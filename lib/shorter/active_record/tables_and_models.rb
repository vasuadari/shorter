require 'singleton'

module Shorter
  module ActiveRecord
    class TablesAndModels
      include Singleton

      attr_reader :tables_and_models, :loaded

      def initialize
        load!
      end

      def load!
        models = ::ActiveRecord::Base.send(:subclasses)
        @tables_and_models =
          {}.tap do |tables_and_models|
            models.each { |model| tables_and_models[model.table_name] = model }
          end
      end

      def reload!
        unless tables_and_models.values.size == ::ActiveRecord::Base.send(:subclasses).size
          @loaded = true
          load!
        end
      end

      def model(table_name)
        loaded || reload!
        tables_and_models[table_name.to_s]
      end
    end
  end
end
