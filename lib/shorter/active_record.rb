module Shorter
  module ActiveRecord
    def method_missing(method_name, *args, &block)
      if ::ActiveRecord::Base.connected?
        model = TablesAndModels.instance.model(method_name)
        model.present? ? model.where(id: self).first : super
      else
        super
      end
    end
  end
end

Fixnum.send :include, Shorter::ActiveRecord
