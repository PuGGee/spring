module Validators
  class Base

    def initialize(object)
      @object = object
    end

    def validate
    end

    def self.validate(object)
      new(object).validate
    end

    private

    attr :object

    def error(attribute = :base, message)
      object.errors.add(attribute, message)
    end
  end
end
