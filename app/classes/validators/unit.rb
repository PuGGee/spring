module Validators
  class Unit < Base

    def validate
      unless object.type_definition.present?
        error(:unit_type, 'must be a valid type')
      end
    end
  end
end
