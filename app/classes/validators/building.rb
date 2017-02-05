module Validators
  class Building < Base

    def validate
      unless object.type_definition.present?
        error(:building_type, 'must be a valid type')
      end
    end
  end
end
