module Validators
  class Event < Base

    def validate
      unless object.type_definition.present?
        error(:event_type, 'must be a valid type')
      end
    end
  end
end
