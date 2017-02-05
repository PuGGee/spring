class Unit < ApplicationRecord

  belongs_to :army

  def type_definition
    "UnitTypes::#{unit_type.camelize}".constantize
  rescue NameError
    nil
  end
end
