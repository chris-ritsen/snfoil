# frozen_string_literal: true

require 'delegate'

module SnFoil
  module Adapters
    module ORMs
      class BaseAdapter < SimpleDelegator
        def new(**_params)
          raise NotImplementedError, '#new not implemented in adapter'
        end

        def all
          raise NotImplementedError, '#all not implemented in adapter'
        end

        def save
          raise NotImplementedError, '#save not implemented in adapter'
        end

        def destroy
          raise NotImplementedError, '#destroy not implemented in adapter'
        end

        def attributes=(_attributes)
          raise NotImplementedError, '#attributes= not implemented in adapter'
        end

        def is_a?(check_class)
          __getobj__.class.object_id.equal?(check_class.object_id)
        end

        def klass
          __getobj__.class
        end
      end
    end
  end
end
