require_relative 'active_record/tables_and_models'

module Shorter
  module ActiveRecord
    def method_missing(method_name, *args, &block)
      if ::ActiveRecord::Base.connected?
        model = TablesAndModels.instance.model(method_name.to_s)
        model.present? ? model.where(id: self).first : super
      else
        super
      end
    end
  end
end

Fixnum.send :include, Shorter::ActiveRecord
